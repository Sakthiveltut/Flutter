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
        title: Text('TextButton Example'),
      ),
      body: Center(
        child: Container(
          child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: Text('Login'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // Text color
                  backgroundColor: Colors.blue, // Button color
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Cancel'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // Text color
                  backgroundColor: Colors.red, // Button color
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
