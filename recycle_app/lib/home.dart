import 'package:flutter/material.dart';
import 'package:recycle_app/how_to_use.dart';
import 'package:recycle_app/info.dart';
import 'package:recycle_app/camera.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text('Recycling!', style: TextStyle(fontSize: 25)),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
            margin: new EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Image(
                    image: AssetImage('assets/images/download.jpg'),
                    width: 250,
                    height: 250),
                Center(
                  child: RaisedButton(
                      color: Theme.of(context).focusColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(15),
                      textColor: Colors.white,
                      child: Text('Take A Picture',
                          style: TextStyle(fontSize: 30)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CameraScreen(title: "Predict Bin"),
                            ));
                      }

                      // setupCameras();
                      // },
                      ),
                ),
                Text('\n\n'),
                Center(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Theme.of(context).focusColor,
                    padding: EdgeInsets.all(15),
                    textColor: Colors.white,
                    child: Text('How to Use', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HowToUse()),
                      );
                    },
                  ),
                ),
                Text('\n\n'),
                Center(
                  child: RaisedButton(
                    color: Theme.of(context).focusColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text('General Information',
                        style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Info()),
                      );
                    },
                  ),
                ),
              ],
            )));
  }
}
