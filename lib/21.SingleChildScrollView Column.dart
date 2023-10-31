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
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              color: Colors.red,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 250,
              color: Colors.orange,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 250,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 250,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
