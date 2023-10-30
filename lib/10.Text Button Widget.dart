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
        title: Text('Flat Button'),
      ),
      body: Center(
          // child: TextButton(
          //   color: Colors.red,
          //   textColor: Colors.white,
          //   padding: EdgeInsets.all(5.0),
          //   splashColor: Colors.blueAccent,
          //   disabledTextColor: Colors.deepOrange,
          //   disabledColor: Colors.grey,
          //   child: Text('Click Me'),
          // ),
          child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.blue,
          disabledForegroundColor: Colors.red.withOpacity(0.38),
        ),
        onPressed: () {},
        child: Text('TextButton'),
      )),
    );
  }
}
