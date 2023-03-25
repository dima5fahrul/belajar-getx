import 'package:belajar_getx/time/date_predict.dart';
import 'package:belajar_getx/time/month_predict.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class TimeFlutter extends StatelessWidget {
  const TimeFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateFormat.yMMMMEEEEd().format(
                DateTime.now(),
              ),
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              DateFormat.EEEE().add_jm().format(
                    DateTime.now(),
                  ),
              style: const TextStyle(fontSize: 30),
            ),
            const DatePredict(),
            const MonthPredict(),
          ],
        ),
      ),
    );
  }
}
