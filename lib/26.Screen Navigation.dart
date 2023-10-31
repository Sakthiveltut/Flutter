import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Routing'),
      ),
      body: Center(
        child: Text(
          "Page-1",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SecondPage()));
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Routing'),
      ),
      body: Center(
        child: Text(
          "Page-2",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_before),
        onPressed: () {
          Navigator.of(context)
              .pop(MaterialPageRoute(builder: (context) => FirstPage()));
        },
      ),
    );
  }
}
