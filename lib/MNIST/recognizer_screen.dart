import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgpa_sem5/Home1.dart';
// import 'package:sgpa_sem5/MNIST/constant.dart';
import 'package:sgpa_sem5/MNIST/brain.dart';
import 'package:sgpa_sem5/MNIST/drawing_painter.dart';
// import 'package:fl_chart/fl_chart.dart';

import '../colors.dart';

class RecognizerScreen extends StatefulWidget {
  RecognizerScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RecognizerScreen createState() => _RecognizerScreen();
}

class _RecognizerScreen extends State<RecognizerScreen> {
  List<Offset> points = [];
  AppBrain appBrain = AppBrain();
  // List<BarChartGroupData> chartItems = List();
  String headerText = 'Header placeholder';
  String footerText = 'Footer placeholder';

  @override
  void initState() {
    super.initState();
    appBrain.loadModel();
    _resetLabels();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          widget.title,
          style: GoogleFonts.blackOpsOne(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 32,
          )),
        )),
        backgroundColor: f10,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeOne()));
          },
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.center,
                child: Text(
                  headerText,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: f1),
              ),
              padding: EdgeInsets.all(16),
              child: Builder(builder: _buildCanvas),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 64),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          footerText,
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew_sharp),
        backgroundColor: f9,
        onPressed: () {
          setState(() {
            points = List();

            _resetLabels();
          });
        },
      ),
    );
  }

  Widget _buildCanvas(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (DragUpdateDetails details) {
        setState(() {
          RenderBox renderBox = context.findRenderObject();
          points.add(
            renderBox.globalToLocal(details.globalPosition),
          );
        });
      },
      onPanStart: (DragStartDetails details) {
        setState(() {
          RenderBox renderBox = context.findRenderObject();
          points.add(
            renderBox.globalToLocal(details.globalPosition),
          );
        });
      },
      onPanEnd: (DragEndDetails details) async {
        points.add(null);
        List predictions = await appBrain.processCanvasPoints(points);
        setState(() {
          _setLabelsForGuess(predictions.first['label']);
        });
      },
      child: ClipRect(
        child: CustomPaint(
          size: Size(200.0, 200.0),
          painter: DrawingPainter(offsetPoints: points),
        ),
      ),
    );
  }

  void _resetLabels() {
    headerText = 'Please draw a number in the box below';
    footerText = 'Let me guess...';
  }

  void _setLabelsForGuess(String guess) {
    headerText = "Finished guessing!"; // Empty string
    footerText = 'The number you draw is' + " " + guess;
  }
}
