import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Outlined Button')),
      body: Center(
        child: OutlinedButton(
          // Change from OutlineButton to OutlinedButton
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
            ),
            side: MaterialStateProperty.all<BorderSide>(
              BorderSide(
                color: Colors.red,
                style: BorderStyle.solid,
                width: 3.0,
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Click Me',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
