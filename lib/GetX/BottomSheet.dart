import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class ThemeController extends GetxController {
  final RxBool isDarkMode = false.obs;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Bottom Sheet',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, // Use system theme by default
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  void showBottomSheet() {
    Get.bottomSheet(
      Container(
        color: Get.theme.scaffoldBackgroundColor,
        child: Center(
          child: Text('This is a bottom sheet'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Bottom Sheet'),
        actions: [
          IconButton(
            onPressed: themeController.toggleTheme,
            icon: Icon(Icons.brightness_6),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: showBottomSheet,
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
