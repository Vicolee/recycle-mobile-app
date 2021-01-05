import "package:flutter/material.dart";
import 'package:recycle_app/results.dart';

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Camera", style: TextStyle(fontSize: 25)),
      ),
      body: Center(
        child: RaisedButton(
          color: Theme.of(context).focusColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(15),
          textColor: Colors.white,
          child: Text('Results', style: TextStyle(fontSize: 30)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Results()),
            );
          },
        ),
      ),
    );
  }
}
