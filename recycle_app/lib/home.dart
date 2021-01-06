import 'package:flutter/material.dart';
import 'package:recycle_app/camera.dart';
import 'package:recycle_app/how_to_use.dart';
import 'package:recycle_app/info.dart';
import 'package:camera/camera.dart';

import "package:flutter/material.dart";
import 'package:recycle_app/results.dart';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';

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
                    child:
                        Text('Take A Picture', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Future<void> setupCameras() async {
                        // Ensure that plugin services are initialized so that `availableCameras()`
                        // can be called before `runApp()`
                        WidgetsFlutterBinding.ensureInitialized();

                        // Obtain a list of the available cameras on the device.
                        final cameras = await availableCameras();

                        // Get a specific camera from the list of available cameras.
                        final firstCamera = cameras.first;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Camera(camera: firstCamera),
                            ));
                      }

                      setupCameras();
                    },
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
