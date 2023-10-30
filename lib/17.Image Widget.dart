import 'package:flutter/gestures.dart';
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
        title: Text('Image'),
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        color: Colors.blue,
        child: Image(
          image: AssetImage('images/fox.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
