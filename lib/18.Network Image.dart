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
        title: Text('Network Image'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                image: NetworkImage(
                  'https://resize.hswstatic.com/u_0/w_480/gif/hybrid-tea-rose-1.jpg',
                ),
                fit: BoxFit.cover,
              )),
          /*
          child: Image.network(
            'https://resize.hswstatic.com/u_0/w_480/gif/hybrid-tea-rose-1.jpg',
            fit: BoxFit.fill,
          ),
          */
          child: Center(
            child: Text(
              'Roses',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
