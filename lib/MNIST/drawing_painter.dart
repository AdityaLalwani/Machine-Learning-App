import 'package:flutter/material.dart';
import 'package:sgpa_sem5/MNIST/constant.dart';

class DrawingPainter extends CustomPainter {
  List<Offset> offsetPoints;

  DrawingPainter({this.offsetPoints});

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < offsetPoints.length; ++i) {
      if (offsetPoints[i] != null && offsetPoints[i + 1] != null) {
        canvas.drawLine(
          offsetPoints[i],
          offsetPoints[i + 1],
          kDrawingPaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
