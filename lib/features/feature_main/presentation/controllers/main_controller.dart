import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MainController extends GetxController {

  /// Observe screen brightness
  final _brightness = MediaQuery.of(Get.context!).platformBrightness.obs;

  bool isDarkMode() => _brightness.value == Brightness.dark;
}