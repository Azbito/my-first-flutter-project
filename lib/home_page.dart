import 'package:first_project/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool test = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                const Text('Home Page', style: TextStyle(color: Colors.white))),
        body: Center(
            child: Switch(
                value: AppController.instance.isDarkTheme,
                onChanged: (value) {
                  AppController.instance.changeTheme();
                  setState(() {});
                })),
        floatingActionButton: FloatingActionButton(
            foregroundColor: Colors.white,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Icon(Icons.add)));
  }
}
