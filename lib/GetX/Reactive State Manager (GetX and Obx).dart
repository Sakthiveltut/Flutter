import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Obx',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Obx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                'Count: ${counterController.count}',
                style: TextStyle(fontSize: 24),
              );
            }),
            ElevatedButton(
              onPressed: counterController.increment,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
