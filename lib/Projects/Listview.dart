import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'PLAYING XI',
                style: TextStyle(fontSize: 24),
              ),
              Divider(
                color: Colors.black, // Set the color of the line
              ),
            ],
          ),
        ),
      ),
    );
  }
}
