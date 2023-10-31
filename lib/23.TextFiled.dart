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
  String _value = '';
  void _onChanged(String value) {
    setState(() {
      _value = 'On Change : ' + value;
    });
  }

  void _onSubmit(String value) {
    setState(() {
      _value = 'On Submit : ' + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Column(
        children: <Widget>[
          Text(_value),
          TextField(
            decoration: new InputDecoration(
                labelText: 'Enter Name',
                hintText: 'Full Name',
                icon: new Icon(Icons.people)),
            autocorrect: true,
            onChanged: _onChanged,
            onSubmitted: _onSubmit,
            keyboardType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
