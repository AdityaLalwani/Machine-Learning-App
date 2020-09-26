import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgpa_sem5/flower.dart';

import 'matrix/Matrix.dart';
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
        //1 snake
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

        //2 tic tac toe
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
                      MaterialPageRoute(builder: (context) => MatrixEffect()));
                },
                child: Text(
                  "MATRIX",
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

        //3 sudoku
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
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
        ),

        //4 2048
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
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
        ),

        //5 tetris
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
                onTap: () {},
                child: ClipRRect(),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
