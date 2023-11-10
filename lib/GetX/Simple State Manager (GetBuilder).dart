import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class CounterController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(); // Trigger a rebuild when the count changes
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
        title: Text('GetBuilder Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              builder: (controller) {
                return Text(
                  'Count: ${controller.count}',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
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
