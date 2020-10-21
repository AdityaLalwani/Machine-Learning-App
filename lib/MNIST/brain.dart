import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as im;
import 'package:sgpa_sem5/MNIST/constant.dart';
import 'package:tflite/tflite.dart';

class AppBrain {
  Future loadModel() async {
    Tflite.close();

    try {
      await Tflite.loadModel(
        model: "assets/converted_mnist_model.tflite",
        labels: "assets/labels.txt",
      );
    } on PlatformException {
      print("Failed to load model");
    }
  }

  Future<List> processCanvasPoints(List<Offset> points) async {
    final double canvasSizeWithPadding = kCanvasSize + (2 * kCanvasInnerOffset);
    final Offset canvasOffset = Offset(kCanvasInnerOffset, kCanvasInnerOffset);
    final PictureRecorder recorder = PictureRecorder();
    final Canvas canvas = Canvas(
      recorder,
      Rect.fromPoints(
        Offset(0, 0),
        Offset(canvasSizeWithPadding, canvasSizeWithPadding),
      ),
    );

    canvas.drawRect(
      Rect.fromLTWH(0, 0, canvasSizeWithPadding, canvasSizeWithPadding),
      kBackgroundPaint,
    );

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(
          points[i] + canvasOffset,
          points[i + 1] + canvasOffset,
          kWhitePaint,
        );
      }
    }

    final Picture picture = recorder.endRecording();
    final image = await picture.toImage(
      canvasSizeWithPadding.toInt(),
      canvasSizeWithPadding.toInt(),
    );
    final imageBytes = await image.toByteData(
      format: ImageByteFormat.png,
    );
    Uint8List pngUint8List = imageBytes.buffer.asUint8List();

    im.Image imImage = im.decodeImage(pngUint8List);
    im.Image resizedImage = im.copyResize(
      imImage,
      width: kModelInputSize,
      height: kModelInputSize,
    );

    return predictImage(resizedImage);
  }

  Future<List> predictImage(im.Image image) async => Tflite.runModelOnBinary(
        binary: imageToByteListFloat32(image, kModelInputSize),
      );

  Uint8List imageToByteListFloat32(im.Image image, int inputSize) {
    final Float32List convertedBytes = Float32List(inputSize * inputSize);
    final Float32List buffer = Float32List.view(convertedBytes.buffer);
    int pixelIndex = 0;

    for (int i = 0; i < inputSize; i++) {
      for (int j = 0; j < inputSize; j++) {
        final int pixel = image.getPixel(j, i);
        buffer[pixelIndex++] =
            (im.getRed(pixel) + im.getGreen(pixel) + im.getBlue(pixel)) /
                3 /
                255.0;
      }
    }

    return convertedBytes.buffer.asUint8List();
  }

  double convertPixel(int color) {
    return (255 -
            (((color >> 16) & 0xFF) * 0.299 +
                ((color >> 8) & 0xFF) * 0.587 +
                (color & 0xFF) * 0.114)) /
        255.0;
  }
}
