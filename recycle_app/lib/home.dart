import 'package:flutter/material.dart';
import 'package:recycle_app/camera.dart';
import 'package:recycle_app/how_to_use.dart';
import 'package:recycle_app/info.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                child: Text('Take A Picture'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Camera()),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('How to Use'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HowToUse()),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('General Information'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Info()),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
