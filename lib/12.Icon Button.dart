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
  double _volume = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Button'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: IconButton(
              icon: Icon(Icons.volume_up),
              iconSize: 50,
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  _volume += 10;
                });
              },
            ),
          ),
          Text(
            'Volume : ${_volume}',
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
