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

  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: SizedBox(
                        height: 100,
                        child: Image.asset('assets/images/logo.png'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 40, right: 32, bottom: 40, left: 32),
                          child: Column(children: [
                            TextField(
                              onChanged: (text) {
                                setState(() {
                                  email = text;
                                  emailError = '';
                                });
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  labelText: "Email",
                                  border: OutlineInputBorder()),
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
                                setState(() {
                                  password = text;
                                  passwordError = '';
                                });
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
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green.shade400),
                              onPressed: () {
                                setState(() {
                                  if (email.isEmpty) {
                                    emailError = 'Preencha o campo';
                                  }
                                  if (password.isEmpty) {
                                    passwordError = 'Preencha o campo';
                                  }
                                });
                                // No errors, navigate to HomePage
                                if (email.isNotEmpty && password.isNotEmpty) {
                                  // No errors, navigate to HomePage
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => const HomePage()),
                                  );
                                }
                              },
                              child: const SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Entrar',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ])),
                    ),
                  ],
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child:
                Image.asset('assets/images/background.jpg', fit: BoxFit.cover)),
        Container(color: Colors.black.withOpacity(.3)),
        _body()
      ],
    ));
  }
}
