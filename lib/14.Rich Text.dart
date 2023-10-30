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
        title: Text('Rich Text'),
      ),
      body: RichText(
        text: TextSpan(
            text: 'Welcome',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 29.0,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              fontStyle: FontStyle.italic,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' to',
                style: TextStyle(
                    color: Colors.orange,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              TextSpan(
                  text: ' Flutter',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decorationStyle: TextDecorationStyle.double,
                  )),
            ]),
      ),
    );
  }
}
