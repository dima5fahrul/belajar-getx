import 'package:belajar_getx/controllers/person_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class GetBuilderPage extends StatelessWidget {
  GetBuilderPage({super.key});

  final personC = Get.put(PersonControllerV3());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GetBuilder<PersonControllerV3>(
          // init: PersonControllerV3(),
          builder: (controller) => Text(
            "My name is ${controller.person.name}",
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          personC.changePerson();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
