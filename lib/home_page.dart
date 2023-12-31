import 'package:first_project/app_controller.dart';
import 'package:first_project/theme_switch.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                      'https://media.discordapp.net/attachments/1098600696938516511/1139035996500009010/image.png'),
                ),
                accountName: const Text('Hunter'),
                accountEmail: const Text('hunter@proton.me')),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text("Tela de início"),
            ),
            ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                subtitle: const Text("Finalizar sessão"),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                }),
          ],
        )),
        appBar: AppBar(
          title: const Text('Home Page', style: TextStyle(color: Colors.white)),
          actions: [ThemeSwitch()],
        ),
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.green.shade500,
                        borderRadius: BorderRadius.circular(10)),
                    child: (Text(
                      'Contador: $counter',
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    )),
                  )
                ])),
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
