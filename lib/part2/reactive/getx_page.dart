import 'package:belajar_getx/controllers/person_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class GetxPage extends StatelessWidget {
  const GetxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GetX<PersonControllerV2>(
          init: PersonControllerV2(),
          builder: (controller) => Text(
            "My name is ${controller.person.value.name}",
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<PersonControllerV2>().changeUpperCase();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
