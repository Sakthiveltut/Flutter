import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

// Stateless Widget
class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: Text('Sakthivel')),
    );
  }
}

// Stateful widget
class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  String value = "vel1";
  void clickMe() {
    setState(() {
      value = "Sakthivel";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
      children: [
        Text("$value"),
        FloatingActionButton(child: Icon(Icons.add), onPressed: clickMe)
      ],
    ));
  }
}
