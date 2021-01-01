import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "How To Use",
        ), // style: TextStyle(color: Color.fromRGBO(0, 0, 46, 1))
        backgroundColor: Color.fromRGBO(115, 168, 232, 1),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical, //.horizontal
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "1 Description that is too long in text format(Here Data is coming from API) jdlksaf j klkjjflkdsjfkddfdfsdfds " +
                        "2 Description that is too long in text format(Here Data is coming from API) d fsdfdsfsdfd dfdsfdsf sdfdsfsd d " +
                        "3 Description that is too long in text format(Here Data is coming from API)  adfsfdsfdfsdfdsf   dsf dfd fds fs" +
                        "4 Description that is too long in text format(Here Data is coming from API) dsaf dsafdfdfsd dfdsfsda fdas dsad" +
                        "5 Description that is too long in text format(Here Data is coming from API) dsfdsfd fdsfds fds fdsf dsfds fds " +
                        "6 Description that is too long in text format(Here Data is coming from API) asdfsdfdsf fsdf sdfsdfdsf sd dfdsf" +
                        "7 Description that is too long in text format(Here Data is coming from API) df dsfdsfdsfdsfds df dsfds fds fsd" +
                        "8 Description that is too long in text format(Here Data is coming from API)" +
                        "9 Description that is too long in text format(Here Data is coming from API)" +
                        "10 Description that is too long in text format(Here Data is coming from API)",
                    style: new TextStyle(
                      color: Color.fromRGBO(0, 0, 46, 1),
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Home Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
  /* Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recycling Information'),
        backgroundColor: Color.fromRGBO(115, 168, 232, 1),
      ),
      body: Container(
          margin: new EdgeInsets.only(top: 40, left: 18, right: 18),
          
          /* Column(children: <Widget>[
          Text(''),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Home Page'),
            ),
          ),
        ]), */
          ),
    ); */
}
