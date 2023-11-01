import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple Alert",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  void showAlertDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(color: Colors.orange),
          ),
          content: Text(message),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
              ),
              child: Text("OK"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              child: Text("Cancel"),
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
        title: Text("Simple Custom Alert"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            String title = "Test Message";
            String message = "Welcome to Tutor Joes Computer Education";
            showAlertDialog(context, title, message);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
          ),
          child: Text(
            "Click Me",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
