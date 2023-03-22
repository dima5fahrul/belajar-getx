import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarkModeController extends GetxController {
  var isDarkMode = false.obs;

  void changeTheme() => isDarkMode.value = !isDarkMode.value;
}
