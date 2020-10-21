import 'recognizer_screen.dart';
import 'package:flutter/material.dart';

class HandwrittenNumberRecognizerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Recognizer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RecognizerScreen(title: "Draw"),
    );
  }
}
