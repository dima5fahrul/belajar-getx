import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:belajar_getx/controllers/text_controller.dart';
import 'package:belajar_getx/part4/life_cycle_getx.dart';
import 'package:belajar_getx/part4/life_cycle_setstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LifeCycleGetXText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Life Cycle'),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => TextPage());
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}

class TextPage extends StatelessWidget {
  final textControl = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Page'),
      ),
      body: TextField(
        controller: textControl.control,
      ),
    );
  }
}
