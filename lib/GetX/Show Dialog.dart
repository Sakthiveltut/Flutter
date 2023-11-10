import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyHomePage extends StatelessWidget {
  void showDialogBox() {
    Get.defaultDialog(
      title: 'Dialog Title',
      content: Text('This is a simple dialog.'),
      textConfirm: 'OK',
      confirm: ElevatedButton(
        onPressed: Get.back, // Closes the dialog when "OK" is pressed
        child: Text('OK'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Dialog Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: showDialogBox,
              child: Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
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
