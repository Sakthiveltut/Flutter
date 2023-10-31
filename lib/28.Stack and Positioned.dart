import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack | Positioned'),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          color: Colors.blueGrey,
          child: Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none, // Add this line to prevent clipping
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                height: 250,
                width: 250,
                color: Colors.green,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepOrange,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}