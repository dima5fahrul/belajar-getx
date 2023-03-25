import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:belajar_getx/part4/life_cycle_setstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LifeCycleGetX extends StatelessWidget {
  final count = Get.put(CounterControllerV2());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Life Cycle'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const OtherPage(),
                ),
              );
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: CountWidgetGetX(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count.add();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CountWidgetGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterControllerV2>(
        initState: (_) => print('initState'),
        didChangeDependencies: (_) => print('didChangeDependencies'),
        dispose: (_) => print('dispose'),
        builder: (controller) => Text('Angka ${controller.count}'));
  }
}
