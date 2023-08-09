import 'package:first_project/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  String emailError = '';
  String passwordError = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        TextField(
                          onChanged: (text) {
                            setState(() {
                              email = text;
                              emailError = '';
                            });
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: "Email", border: OutlineInputBorder()),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              emailError,
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.red.shade900),
                            )),
                        const SizedBox(height: 10),
                        TextField(
                          onChanged: (text) {
                            password = text;
                            passwordError = '';
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder()),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              passwordError,
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.red.shade900),
                            )),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {
                              if (email.isEmpty) {
                                emailError = 'Preencha o campo';
                                return;
                              }
                              if (password.isEmpty) {
                                passwordError = 'Preencha o campo';
                                return;
                              }
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: const Text('Entrar'))
                      ],
                    )))));
  }
}
