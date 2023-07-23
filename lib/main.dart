import 'package:first_project/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_controller.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppController>(
        create: (_) => AppController(),
        child: const AppWidget(key: Key('unique_key'))),
  );
}
