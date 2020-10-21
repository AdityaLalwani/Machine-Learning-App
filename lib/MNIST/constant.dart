import 'package:flutter/material.dart';

const double kCanvasSize = 200.0;
const double kStrokeWidth = 12.0;
const Color kBlackBrushColor = Colors.black;
const bool kIsAntiAlias = true;
const int kModelInputSize = 28;
const double kCanvasInnerOffset = 40.0;
const Color kBrushBlack = Colors.black;
const Color kBrushWhite = Colors.white;

final Paint kDrawingPaint = Paint()
  ..strokeCap = StrokeCap.round
  ..isAntiAlias = kIsAntiAlias
  ..color = kBrushBlack
  ..strokeWidth = kStrokeWidth;

final Paint kWhitePaint = Paint()
  ..strokeCap = StrokeCap.round
  ..isAntiAlias = kIsAntiAlias
  ..color = kBrushWhite
  ..strokeWidth = kStrokeWidth;

final kBackgroundPaint = Paint()..color = kBrushBlack;

const int kModelNumberOutputs = 10;
const Color kBarColor = Colors.blue;
const Color kBarBackgroundColor = Colors.transparent;
const double kChartBarWidth = 22;
const String kWaitingForInputHeaderString = 'Please draw a number in the box below';
const String kWaitingForInputFooterString = 'Let me guess...';
const String kGuessingInputString = 'The number you draw is';