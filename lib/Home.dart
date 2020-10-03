import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgpa_sem5/MNIST/mnist.dart';
import 'package:sgpa_sem5/colorTexture/screens/detect_screen.dart';
import 'package:sgpa_sem5/colors.dart';
import 'IntrotoML/Intro.dart';
import 'file:///C:/Users/DELL/Downloads/sgpa_sem5/lib/DogVsCat/dogcat.dart';
import 'file:///C:/Users/DELL/Downloads/sgpa_sem5/lib/flowerRecognition/flower.dart';

// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: f9,
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Intro()));
              },
              child: Card(
                elevation: 20.0,
                color: f4,
                shadowColor: f3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(130.0),
                ),
                child: Center(
                  child: Text(
                    "Introduction: Learn Basis of ML",
                    style: GoogleFonts.blackOpsOne(
                        textStyle: TextStyle(
                      color: f10,
                      fontSize: 32,
                    )),
                  ),
                ),
              ),
            ),
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
                      print("ouch");
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
                      print("ouch");
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
                      print("ouch");
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
                      print("ouch");
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
                          MaterialPageRoute(builder: (context) => Mnist()));
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
        ));
  }
}
