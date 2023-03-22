import 'package:belajar_getx/controllers/person_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ObxPage extends StatelessWidget {
  ObxPage({super.key});

  final personC = Get.put(PersonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(
            "My name is ${personC.person.value.name}",
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          personC.changeUpperCase();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
