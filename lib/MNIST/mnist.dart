import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image/image.dart' as imag;

import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'classify.dart';

class Mnist extends StatefulWidget {
  @override
  _Mnist createState() => _Mnist();
}

class _Mnist extends State<Mnist> {
  List _outputs;
  File _image;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          "MNIST",
          style: GoogleFonts.blackOpsOne(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 32,
          )),
        )),
      ),
      body: _loading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _image == null ? Container() : Image.file(_image),
                  SizedBox(
                    height: 20,
                  ),
                  _outputs != null
                      ? Text(
                          "${_outputs[0]["label"]}  ${(_outputs[0]["confidence"] * 100.0).toStringAsFixed(2)} %",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            background: Paint()..color = Colors.white,
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        onPressed: pickImage,
        child: Icon(
          Icons.image,
        ),
      ),
    );
  }

  pickImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image;
    });
    String p = image.path;
    classifyImage(p);
  }

  classifyImage(String image) async {
    var imageBytes = (await rootBundle.load(image)).buffer;
    imag.Image oriImage = imag.decodeJpg(imageBytes.asUint8List());
    imag.Image resizedImage = imag.copyResize(oriImage,
        width: MnistClassifier.imgWidth, height: MnistClassifier.imgHeight);
    var output = await Tflite.runModelOnBinary(
      binary: imageToByteListFloat32(
          resizedImage, MnistClassifier.imgWidth, MnistClassifier.imgHeight),
    );
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }

  loadModel() async {
    try {
      await Tflite.loadModel(
        model: "assets/mnist.tflite",
        labels: "assets/mnist.txt",
      );
      print("Model loaded successfully");
    } on PlatformException {
      print('Failed to load model.');
    }
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }
}

class MnistClassifier {
  // Model inputs
  static final int imgWidth = 28;
  static final int imgHeight = 28;
  static final int floatSize = 4;
  static final int pixelSize = 4;
  static final int modelInputSize =
      floatSize * imgWidth * imgHeight * pixelSize;

  // Model outputs
  static final int numClassificationResults = 3;
}
