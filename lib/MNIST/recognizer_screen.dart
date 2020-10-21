import 'package:flutter/material.dart';
import 'package:sgpa_sem5/MNIST/constant.dart';
import 'package:sgpa_sem5/MNIST/brain.dart';
import 'package:sgpa_sem5/MNIST/drawing_painter.dart';
import 'package:fl_chart/fl_chart.dart';

class RecognizerScreen extends StatefulWidget {
  RecognizerScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RecognizerScreen createState() => _RecognizerScreen();
}

class _RecognizerScreen extends State<RecognizerScreen> {
  List<Offset> points = [];
  AppBrain appBrain = AppBrain();
  List<BarChartGroupData> chartItems = List();
  String headerText = 'Header placeholder';
  String footerText = 'Footer placeholder';

  @override
  void initState() {
    super.initState();
    appBrain.loadModel();
    _buildBarChartInfo();
    _resetLabels();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
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
                border: Border.all(width: 3.0, color: Colors.blue),
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(32, 32, 32, 16),
                          child: BarChart(
                            BarChartData(
                              maxY: 1.0,
                              titlesData: FlTitlesData(
                                show: true,
                                bottomTitles: SideTitles(
                                  showTitles: true,
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                  margin: 6,
                                  getTitles: (double value) {
                                    return value.toInt().toString();
                                  },
                                ),
                                leftTitles: SideTitles(showTitles: false),
                              ),
                              borderData: FlBorderData(show: false),
                              barGroups: chartItems,
                            ),
                          ),
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
        child: Icon(Icons.delete),
        onPressed: () {
          setState(() {
            points = List();
            _buildBarChartInfo();
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
          _buildBarChartInfo(recognitions: predictions);
        });
      },
      child: ClipRect(
        child: CustomPaint(
          size: Size(kCanvasSize, kCanvasSize),
          painter: DrawingPainter(offsetPoints: points),
        ),
      ),
    );
  }

  void _buildBarChartInfo({List recognitions = const []}) {
    chartItems = List();

    for (int i = 0; i < kModelNumberOutputs; i++) {
      var barGroup = _makeGroupData(i, 0);
      chartItems.add(barGroup);
    }

    for (var recognition in recognitions) {
      final idx = recognition["index"];
      if (0 <= idx && idx <= 9) {
        final confidence = recognition["confidence"];
        chartItems[idx] = _makeGroupData(idx, confidence);
      }
    }
  }

  void _resetLabels() {
    headerText = kWaitingForInputHeaderString;
    footerText = kWaitingForInputFooterString;
  }

  void _setLabelsForGuess(String guess) {
    headerText = "Finished guessing!"; // Empty string
    footerText = kGuessingInputString + " " + guess;
  }

  BarChartGroupData _makeGroupData(int x, double y) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
        y: y,
        color: kBarColor,
        width: kChartBarWidth,
        backDrawRodData: BackgroundBarChartRodData(
          show: true,
          y: 1,
          color: kBarBackgroundColor,
        ),
      ),
    ]);
  }
}
