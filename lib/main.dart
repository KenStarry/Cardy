import 'package:cardy/features/feature_home/presentation/home_screen.dart';
import 'package:cardy/features/feature_main/presentation/main_screen.dart';
import 'package:cardy/navigation/nav_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: NavConstants.mainRoute,
      getPages: [
        GetPage(name: NavConstants.mainRoute, page: () => const MainScreen()),
        GetPage(name: NavConstants.homeRoute, page: () => const HomeScreen())
      ],
    );
  }
}
