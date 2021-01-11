import 'dart:async';

import 'package:camera/camera.dart';
import 'package:recycle_app/tensorflow_lite_flutter/models/result.dart';
import 'package:tflite/tflite.dart';

import 'app_helper.dart';

class TFLiteHelper {
  static StreamController<List<Result>> tfLiteResultsController =
      new StreamController.broadcast();
  static List<Result> _outputs = List();
  static var modelLoaded = false;
  static double totalConfidence = 0;

  static Future<String> loadModel() async {
    AppHelper.log("loadModel", "Loading model..");

    return Tflite.loadModel(
      model: "assets/recycle_detection_model.tflite",
      labels: "assets/labels.txt",
    );
  }

  static classifyImageTest(String imagePath) async {
    _outputs.clear();
    await Tflite.runModelOnImage(path: imagePath, numResults: 6).then((value) {
      if (value.isNotEmpty) {
        AppHelper.log("classifyImage", "Results loaded. ${value.length}");

        //Clear previous results
        _outputs.clear();

        value.forEach((element) {
          _outputs.add(Result(
              element['confidence'], element['index'], element['label']));

          AppHelper.log("classifyImage",
              "${element['confidence']} , ${element['index']}, ${element['label']}");
        });
      }
      return _outputs;
    });
  }

  static classifyImage(CameraImage image) async {
    await Tflite.runModelOnFrame(
            imageHeight: 180,
            imageWidth: 180,
            bytesList: image.planes.map((plane) {
              return plane.bytes;
            }).toList(),
            numResults: 6)
        .then((value) {
      if (value.isNotEmpty) {
        AppHelper.log("classifyImage", "Results loaded. ${value.length}");

        //Clear previous results
        _outputs.clear();
        value.forEach((element) {
          totalConfidence += element['confidence'];
        });

        value.forEach((element) {
          _outputs.add(Result(element['confidence'] / totalConfidence,
              element['index'], element['label']));

          AppHelper.log("classifyImage",
              "${element['confidence']} , ${element['index']}, ${element['label']}");
        });
      }
      totalConfidence = 0;

      //Sort results according to most confidence
      _outputs.sort((a, b) => b.confidence.compareTo(a.confidence));

      //Send results
      tfLiteResultsController.add(_outputs);
    });
  }

  static void disposeModel() {
    Tflite.close();
    tfLiteResultsController.close();
  }
}
