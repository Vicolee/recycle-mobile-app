import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:recycle_app/camera.dart';
import 'package:recycle_app/how_to_use.dart';
import 'package:recycle_app/info.dart';
import 'package:recycle_app/pgraph.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            "How To Use",
          ), // style: TextStyle(color: Color.fromRGBO(0, 0, 46, 1))
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Center(
                      child: Text(
                        'Recycling! is comprised of three pages.',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text('\n'),

                    // Information about Camera page
                    // the word 'Camera' is linked to the Camera page (see Navigator.push...)
                    // 'Camera' also is enlarged
                    PGraph(
                      link: 'Camera:',
                      paragraph:
                          ' After snapping an image of waste to be discarded, our image recognition software will evaluate the photo and bring you to a page with detailed information on what to do with your waste.',
                    ),

                    Text('\n'),

                    // Information about How To Recycle page
                    // the phrase 'How To Recycle' is linked to the Info page (see Navigator.push...)
                    // 'How To Recycle' also is enlarged
                    PGraph(
                        link: 'How to Recycle:',
                        paragraph:
                            ' The goal of this page is to provide you with substantial information about recycling, such that you will be equipped with the knowledge to recycle correctly in the future.'),

                    Text('\n'),

                    // // Information about How to Use page
                    // the phrase 'How to Use' is linked to the How to Use page (see Navigator.push...)
                    // 'How to Use' also is enlarged
                    PGraph(
                        link: 'How To Use:',
                        paragraph:
                            ' The page you are currently on that tells you how to utilize the features of Recycling! most optimally.'),

                    Text('\n'),

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pop(context);
                    //   },
                    //   child: Text('Back to Home Page'),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
