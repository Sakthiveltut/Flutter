import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Font"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "?????",
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Pavanam-Regular",
                  color: Colors.pink),
            ),
            Text(
              "?????",
              style: TextStyle(
                  fontSize: 50, fontFamily: "Coiny-Regular", color: Colors.red),
            ),
            Text(
              "?????",
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Catamaran-VariableFont_wght",
                  color: Colors.blue),
            ),
            Text(
              "?????",
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Kavivanar-Regular",
                  color: Colors.brown),
            )
          ],
        ),
      ),
    );
  }
}
