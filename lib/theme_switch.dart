// ignore: use_key_in_widget_constructors
// ignore_for_file: use_key_in_widget_constructors

import 'package:first_project/app_controller.dart';
import 'package:flutter/material.dart';

class ThemeSwitch extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ThemeSwitchState createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
        setState(() {}); // Trigger the rebuild to update the switch animation
      },
    );
  }
}
