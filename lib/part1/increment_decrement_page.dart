import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Increment extends StatelessWidget {
  Increment({super.key});

  final counter = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Angka: ${counter.count}",
                style: const TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => counter.increment(),
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                    onPressed: () => counter.decrement(),
                    child: const Icon(Icons.remove)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
