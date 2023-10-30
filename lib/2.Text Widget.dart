import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      body: Center(
          child: Text(
        'Sakthivel',
        style: TextStyle(
          fontSize: 35.0,
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 1.0,
          wordSpacing: 5.0,
          backgroundColor: Colors.white12,
          shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(1, 4),
              blurRadius: 2,
            )
          ],
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.double,
        ),
        textDirection: TextDirection.rtl,
      )),
    );
  }
}
