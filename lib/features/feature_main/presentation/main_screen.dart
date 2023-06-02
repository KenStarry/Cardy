import 'package:cardy/features/feature_main/presentation/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final MainController controller;

  @override
  void initState() {
    super.initState();

    controller = Get.find();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnnotatedRegion(
        value: SystemUiOverlayStyle(
            systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
            systemNavigationBarIconBrightness:
                controller.isDarkMode() ? Brightness.dark : Brightness.light),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Cardy",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
