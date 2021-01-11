import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:recycle_app/camera.dart';
import 'package:recycle_app/how_to_use.dart';
import 'package:recycle_app/info.dart';

class PGraph extends StatelessWidget {
  // word to be linked
  final String link;
  // regular paragraph
  final String paragraph;

  PGraph({this.link, this.paragraph});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: link,
              style: TextStyle(
                  // make linked word larger and a light blue
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
              recognizer: new TapGestureRecognizer()
                ..onTap = () {
                  // if link is camera, set link to Camera class
                  if (link == 'Camera:') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CameraScreen(title: 'Predict Bin')),
                    );
                    // if link is info, set link to Info class
                  } else if (link == 'How to Recycle:') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Info()),
                    );
                    // else link is how to use, don't do anything
                    // because it should go to the same page
                  } else {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HowToUse()),
                    // );
                    // DO NOTHING
                  }
                }),
          TextSpan(text: paragraph),
        ],
        style: TextStyle(
            color: Theme.of(context).textSelectionColor, fontSize: 23),
      ),
    ));
  }
}
