import 'package:cardy/di/controllers_di.dart';
import 'package:cardy/di/locator.dart';
import 'package:cardy/features/feature_home/presentation/home_screen.dart';
import 'package:cardy/features/feature_main/presentation/main_screen.dart';
import 'package:cardy/navigation/nav_constants.dart';
import 'package:cardy/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {

  //  intialize get
  init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /// putting all controllers in memory
    putControllers();

    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: NavConstants.mainRoute,
      getPages: [
        GetPage(name: NavConstants.mainRoute, page: () => const MainScreen()),
        GetPage(name: NavConstants.homeRoute, page: () => const HomeScreen())
      ],
    );
  }
}
