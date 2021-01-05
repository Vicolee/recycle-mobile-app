import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:recycle_app/camera.dart';
import 'package:recycle_app/how_to_use.dart';
import 'package:recycle_app/info.dart';
import 'package:recycle_app/pgraph.dart';

class Results extends StatelessWidget {
  var type = "plastic straws";
  var steps =
      "recycling this in a regular blue bin. BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH";
  var thankyou =
      "We appreciate you taking the time to determine how best to recycle. Your efforts are vital to combatting the evergrowing threat of climate change.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("Results", style: TextStyle(fontSize: 25)),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
            margin: new EdgeInsets.only(top: 30, left: 20, right: 20),
            child: CustomScrollView(slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        alignment: Alignment
                            .center, // this isn't working for some reason
                        child: RichText(
                            text: new TextSpan(
                                style: TextStyle(
                                    color: Theme.of(context).textSelectionColor,
                                    fontSize: 30),
                                children: <TextSpan>[
                              new TextSpan(text: 'We detected a photo of '),
                              new TextSpan(
                                  text: type + ".\n\n",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              new TextSpan(
                                  text: 'You should proceed by ' +
                                      steps +
                                      "\n\n", // maybe make the steps bold
                                  style: TextStyle(fontSize: 25)),
                              new TextSpan(
                                  text: thankyou,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic)),
                            ]))),
                    Text('\n'),
                    RaisedButton(
                      color: Theme.of(context).focusColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(15),
                      textColor: Colors.white,
                      child:
                          Text('Back to Home!', style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ]))
            ])));
  }
}
