import 'package:flutter/material.dart';
import 'package:sgpa_sem5/colors.dart';

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

const Color kBarColor = f1;
const Color kBarBackgroundColor = Colors.transparent;
const double kChartBarWidth = 22;
