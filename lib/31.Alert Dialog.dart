import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  Future<void> showAlertDialog(BuildContext context, String message) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context, "Welcome To Flutter");
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
