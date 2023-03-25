import 'package:belajar_getx/controllers/person_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UniqId extends StatelessWidget {
  UniqId({super.key});

  final personC = Get.put(PersonControllerV4());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<PersonControllerV4>(
              // mengambil id yang sudah di buat di controller
              id: 'name',
              builder: (controller) => Text(
                "My name is ${controller.person.name}",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            GetBuilder<PersonControllerV4>(
              id: 'age',
              builder: (controller) => Text(
                "I'am ${controller.person.age} years old",
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
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
