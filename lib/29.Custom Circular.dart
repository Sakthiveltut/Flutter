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
        title: Text('Custom Circular Button'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CircularButton(
              height: 60,
              width: 60,
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              color: Colors.red,
              onClick: () {
                print("Button Clicked");
              },
            ),
            CircularButton(
              height: 40,
              width: 40,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              color: Colors.blue,
              onClick: () {
                print("Button Clicked");
              },
            ),
            CircularButton(
              height: 80,
              width: 80,
              icon: Icon(
                Icons.people,
                color: Colors.white,
              ),
              color: Colors.green,
              onClick: () {
                print("Button Clicked");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onClick;

  const CircularButton(
      {Key key, this.width, this.height, this.color, this.icon, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon, onPressed: onClick),
    );
  }
}