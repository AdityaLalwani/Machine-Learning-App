import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgpa_sem5/MNIST/mnist.dart';
import 'package:sgpa_sem5/colorTexture/screens/detect_screen.dart';
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
        child: GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      children: [
        SizedBox(
          height: 10,
          child: Card(
            elevation: 20.0,
            color: Color(0xfff4f4f0),
            shadowColor: Color(0xfff4f4f0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Introduction: Learn Basis of ML",
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  )),
                ),
              ),
            ),
          ),
        ),
        //1 Dog cat
        Card(
          elevation: 20.0,
          color: Color(0xfff4f4f0),
          shadowColor: Color(0xfff4f4f0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DogCat()));
                },
                child: Text(
                  "Dog and Cat",
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  )),
                ),
              ),
            ],
          ),
        ),

        //2. flower
        Card(
          elevation: 20.0,
          color: Color(0xfff4f4f0),
          shadowColor: Color(0xfff4f4f0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Flower()));
                },
                child: Text(
                  "FLOWER",
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  )),
                ),
              ),
            ],
          ),
        ),

        //3. Color
        Card(
          elevation: 20.0,
          color: Color(0xfff4f4f0),
          shadowColor: Color(0xfff4f4f0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetectScreen(
                                title: 'Color Detection',
                              )));
                },
                child: Text(
                  "Color Texture",
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  )),
                ),
              ),
            ],
          ),
        ),

        //4 Fashion Mnist
        Card(
          elevation: 20.0,
          color: Color(0xfff4f4f0),
          shadowColor: Color(0xfff4f4f0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mnist()));
                },
                child: Text(
                  "MNIST",
                  style: GoogleFonts.blackOpsOne(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  )),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
