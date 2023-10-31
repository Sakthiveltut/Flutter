import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
              height: 100,
              width: 150,
              color: Colors.red,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.orange,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.blue,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
