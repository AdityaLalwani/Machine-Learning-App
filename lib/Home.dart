import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgpa_sem5/colors.dart';
import 'Home1.dart';
import 'MachineLearning/IntrotoML/Intro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: f9,
        child: Column(
          children: [
            //Basis of ML
            Row(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Intro()));
                    },
                    child: Card(
                      elevation: 20.0,
                      color: f4,
                      shadowColor: f3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          "Basis of ML",
                          style: GoogleFonts.blackOpsOne(
                              textStyle: TextStyle(
                            color: f10,
                            fontSize: 20,
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
                //Regression
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Intro()));
                    },
                    child: Card(
                      elevation: 20.0,
                      color: f4,
                      shadowColor: f3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          "Regression",
                          style: GoogleFonts.blackOpsOne(
                              textStyle: TextStyle(
                            color: f10,
                            fontSize: 20,
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //Classification
            Row(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Intro()));
                    },
                    child: Card(
                      elevation: 20.0,
                      color: f4,
                      shadowColor: f3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          "Classification",
                          style: GoogleFonts.blackOpsOne(
                              textStyle: TextStyle(
                            color: f10,
                            fontSize: 20,
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
                //Clustering
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Intro()));
                    },
                    child: Card(
                      elevation: 20.0,
                      color: f4,
                      shadowColor: f3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          "Clustering",
                          style: GoogleFonts.blackOpsOne(
                              textStyle: TextStyle(
                            color: f10,
                            fontSize: 20,
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Custom Models
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeOne()));
                },
                child: Card(
                  elevation: 20.0,
                  color: f4,
                  shadowColor: f3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      "Custom Based Models",
                      style: GoogleFonts.blackOpsOne(
                          textStyle: TextStyle(
                        color: f10,
                        fontSize: 24,
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
