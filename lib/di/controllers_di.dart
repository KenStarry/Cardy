import 'package:cardy/features/feature_main/presentation/controllers/main_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:get/get.dart';

void putControllers() {
  /// Provide controllers
  Get.lazyPut(() => MainController());
}
