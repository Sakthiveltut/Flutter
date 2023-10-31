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
  void showBottom() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome To Flutter'),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          onPressed: showBottom,
          child: Text('Click Me'),
        ),
      ),
    );
  }
}
