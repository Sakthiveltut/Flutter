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
  bool mon = false;
  bool tue = false;
  bool wed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            checkBox('Mon', mon),
            checkBox('Tue', tue),
            checkBox('Wed', wed),
          ],
        ),
      ),
    );
  }

  Column checkBox(String title, val) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title),
        Checkbox(
          value: val,
          onChanged: (value) {
            setState(() {
              switch (title) {
                case 'Mon':
                  mon = value!;
                  break;
                case 'Tue':
                  tue = value!;
                  break;
                case 'Wed':
                  wed = value!;
                  break;
              }
            });
          },
        )
      ],
    );
  }
}
