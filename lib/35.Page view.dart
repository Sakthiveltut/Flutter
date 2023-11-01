import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              page.animateToPage(--pageIndex,
                  duration: Duration(milliseconds: 400),
                  curve: Curves.linearToEaseOut);
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              page.animateToPage(++pageIndex,
                  duration: Duration(milliseconds: 400),
                  curve: Curves.linearToEaseOut);
            },
          ),
        ],
      ),
      body: PageView(
        controller: page,
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        children: [
          Container(
            child: Center(
                child: Text(
              "Page-1",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.deepOrange,
          ),
          Container(
            child: Center(
                child: Text(
              "Page-2",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.grey,
          ),
          Container(
            child: Center(
                child: Text(
              "Page-3",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.teal,
          ),
          Container(
            child: Center(
                child: Text(
              "Page-4",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
