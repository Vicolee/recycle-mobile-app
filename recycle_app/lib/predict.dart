import "package:flutter/material.dart";
// import 'dart:io';
import 'package:tflite/tflite.dart';
import 'dart:async';

class Predict extends StatefulWidget {
  final String imagePath;

  const Predict({Key key, this.imagePath}) : super(key: key);

  // static Future<String> loadModel() {
  //   return Tflite.loadModel(
  //     model: "assets/recycle_detection_model.tflite",
  //     labels: "assets/labels.txt",
  //   );
  // }

  // static String classifyImage(imagePath) {
  //   // loadModel();
  //   var output = Tflite.runModelOnImage(path: imagePath);
  //   var result = output.toString();
  //   return result;
  // }

  @override
  _PredictState createState() => _PredictState();
}

class _PredictState extends State<Predict> {
  String result;

  Future classifyImage() async {
    await Tflite.loadModel(
        model: "assets/recycle_detection_model.tflite",
        labels: "assets/labels.txt");
    var output = await Tflite.runModelOnImage(path: widget.imagePath);
    setState(() {
      result = output.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Results')),
        body: RaisedButton(
          onPressed: () => classifyImage(),
        ));
  }
}
