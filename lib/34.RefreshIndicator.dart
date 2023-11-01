import 'dart:math';
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
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> data = [];
  @override
  void initState() {
    loadList();
    super.initState();
  }

  Future loadList() async {
    await Future.delayed(Duration(milliseconds: 5000));
    final random = Random();
    final data = List.generate(8, (index) => random.nextInt(100));
    setState(() {
      this.data = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Refresh Indicator"),
      ),
      body: Container(
        child: RefreshIndicator(
          edgeOffset: 0,
          displacement: 200,
          backgroundColor: Colors.teal,
          color: Colors.white,
          strokeWidth: 2,
          onRefresh: loadList,
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data[index].toString(),
                      style: TextStyle(fontSize: 35),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
