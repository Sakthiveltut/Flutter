import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> images = [
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Carousel'),
        ),
        body: PageView.builder(
          itemCount: images.length,
          pageSnapping: true,
          itemBuilder: (context, pagePosition) {
            return Container(
              margin: EdgeInsets.all(10),
              child: Image.network(images[pagePosition]),
            );
          },
        ),
      ),
    );
  }
}
