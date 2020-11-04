import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/DELL/Downloads/sgpa_sem5/lib/colorTexture/tflite_helper.dart';

class CameraHelper {
  static CameraController camera;

  static bool isDetecting = false;
  static CameraLensDirection _direction = CameraLensDirection.back;
  static Future<void> initializeControllerFuture;

  static Future<CameraDescription> _getCamera(CameraLensDirection dir) async {
    return await availableCameras().then(
      (List<CameraDescription> cameras) => cameras.firstWhere(
        (CameraDescription camera) => camera.lensDirection == dir,
      ),
    );
  }

  static void initializeCamera() async {
    camera = CameraController(
        await _getCamera(_direction),
        defaultTargetPlatform == TargetPlatform.android
            ? ResolutionPreset.high
            : ResolutionPreset.low,
        enableAudio: false);
    initializeControllerFuture = camera.initialize().then((value) {
      camera.startImageStream((CameraImage image) {
        if (!TFLiteHelper.modelLoaded) return;
        if (isDetecting) return;
        isDetecting = true;
        try {
          TFLiteHelper.classifyImage(image);
        } catch (e) {
          print(e);
        }
      });
    });
  }
}
