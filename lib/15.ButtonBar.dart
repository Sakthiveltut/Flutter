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
        title: Text('ButtonBar'),
      ),
      body: Container(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print("Home");
              },
            ),
            IconButton(
              icon: Icon(Icons.people),
              onPressed: () {
                print("People");
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print("Home");
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Home");
              },
            ),
          ],
        ),
      ),
    );
  }
}
