import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class DogCat extends StatefulWidget {
  @override
  _DogCat createState() => _DogCat();
}

class _DogCat extends State<DogCat> {
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
          "Dog & Cat",
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
                      ? _outputs[0]["confidence"] == 1
                          ? Text(
                              "${_outputs[0]["label"]}  ${(_outputs[0]["confidence"] * 100.0).toStringAsFixed(2)} %",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                background: Paint()..color = Colors.white,
                              ),
                            )
                          : Text(
                              "None",
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
    classifyImage(image);
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 5,
        threshold: 0.2,
        imageMean: 0.0,
        imageStd: 255.0,
        asynch: true);
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/dogcat.tflite",
      labels: "assets/dogcat.txt",
    );
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }
}
