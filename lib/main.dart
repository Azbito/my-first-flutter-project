import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget(
    title: 'Bodia',
    key: Key('unique_key'),
  ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({required Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red), home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            child: Text('Contador: $counter'),
            onTap: () {
              setState(() {
                counter++;
              });
            }));
  }
}
