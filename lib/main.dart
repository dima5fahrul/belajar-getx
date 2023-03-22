import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:belajar_getx/part2/simple/get_builder_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final darkMode = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: darkMode.isDarkMode.value ? ThemeData.dark() : ThemeData.light(),
        home: GetBuilderPage(),
      ),
    );
  }
}
