import 'package:first_project/app_controller.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({required Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.amber,
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          home: Builder(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );
  }
}
