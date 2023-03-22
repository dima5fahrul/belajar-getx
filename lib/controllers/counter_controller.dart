import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  var isDarkMode = false.obs;

  void changeTheme() => isDarkMode.value = !isDarkMode.value;

  void increment() => count + 1;
  void decrement() => count - 1;
}
