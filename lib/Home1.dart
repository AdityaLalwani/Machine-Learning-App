import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sgpa_sem5/Home.dart';
import 'package:sgpa_sem5/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'DogVsCat/dogcat.dart';
import 'MNIST/digitHome.dart';
import 'colorTexture/screens/detect_screen.dart';
import 'flowerRecognition/flower.dart';
import 'main.dart';

class HomeOne extends StatefulWidget {
  @override
  _HomeOneState createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          "Models",
          style: GoogleFonts.blackOpsOne(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 32,
          )),
        )),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
        ),
      ),
      backgroundColor: f9,
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        children: [
          //1 Dog cat
          Card(
            elevation: 20.0,
            color: f4,
            shadowColor: f3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(130.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dog vs Cat",
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                    color: f10,
                    fontSize: 32,
                  )),
                ),
                RaisedButton(
                  onPressed: () {
                    _launchURL(
                        "https://colab.research.google.com/github/lmoroney/mlday-tokyo/blob/master/Lab6-Cats-v-Dogs.ipynb");
                  },
                  child: Text(
                    "How to Train Model",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 22,
                    )),
                  ),
                  color: f2,
                  splashColor: f1,
                  elevation: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DogCat()));
                  },
                  child: Text(
                    "Try It",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 22,
                    )),
                  ),
                  color: f2,
                  splashColor: f1,
                  elevation: 10.0,
                ),
              ],
            ),
          ),

          //2. flower
          Card(
            elevation: 20.0,
            color: f4,
            shadowColor: f3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(130.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "FLOWER",
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                    color: f10,
                    fontSize: 32,
                  )),
                ),
                RaisedButton(
                  onPressed: () {
                    _launchURL(
                        "https://colab.research.google.com/github/tensorflow/examples/blob/master/community/en/flowers_tf_lite.ipynb");
                  },
                  child: Text(
                    "How to Train Model",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 22,
                    )),
                  ),
                  color: f2,
                  splashColor: f1,
                  elevation: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Flower()));
                  },
                  child: Text(
                    "Try It",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 22,
                    )),
                  ),
                  color: f2,
                  splashColor: f1,
                  elevation: 10.0,
                ),
              ],
            ),
          ),

          //3. Color
          Card(
            elevation: 20.0,
            color: f4,
            shadowColor: f3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(130.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Color Detection",
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                    color: f10,
                    fontSize: 32,
                  )),
                ),
                RaisedButton(
                  onPressed: () {
                    _launchURL(
                        "https://drive.google.com/file/d/19s0zBS0Mbf90DFTaVx22MY9g6M2HNaKu/view?usp=sharing");
                  },
                  child: Text(
                    "Download the Dataset",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 22,
                    )),
                  ),
                  color: f2,
                  splashColor: f1,
                  elevation: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    _launchURL(
                        "https://teachablemachine.withgoogle.com/train/image");
                  },
                  child: Text(
                    "Train Model on Teachable Machine",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 22,
                    )),
                  ),
                  color: f2,
                  splashColor: f1,
                  elevation: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetectScreen(
                                  title: 'Color Detection',
                                )));
                  },
                  child: Text(
                    "Try It",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 22,
                    )),
                  ),
                  color: f2,
                  splashColor: f1,
                  elevation: 10.0,
                ),
              ],
            ),
          ),

          //4 Mnist
          Card(
            elevation: 20.0,
            color: f4,
            shadowColor: f3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(130.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MNIST",
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                    color: f10,
                    fontSize: 32,
                  )),
                ),
                RaisedButton(
                  onPressed: () {
                    _launchURL(
                        "https://colab.research.google.com/github/tensorflow/examples/blob/master/lite/codelabs/digit_classifier/ml/step7_improve_accuracy.ipynb");
                  },
                  child: Text(
                    "How to Train Model",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 22,
                    )),
                  ),
                  color: f2,
                  splashColor: f1,
                  elevation: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HandwrittenNumberRecognizerApp()));
                  },
                  child: Text(
                    "Try It",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 22,
                    )),
                  ),
                  color: f2,
                  splashColor: f1,
                  elevation: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
