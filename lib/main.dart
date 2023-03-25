import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:belajar_getx/part2/simple/get_builder_page.dart';
import 'package:belajar_getx/part3/uniq_id.dart';
import 'package:belajar_getx/part4/life_cycle_getx.dart';
import 'package:belajar_getx/part4/life_cycle_getx_text.dart';
import 'package:belajar_getx/part4/life_cycle_setstate.dart';
import 'package:belajar_getx/part5/workers.dart';
import 'package:belajar_getx/time/time.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: WorkersPage(),
    );
  }
}
