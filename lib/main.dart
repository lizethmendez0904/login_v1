import 'package:flutter/material.dart';
import 'package:login_v1/login.dart';
import 'package:login_v1/pagina1.dart';

void main() {
  runApp(const Inicio());
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/pagina1': (context) => const Pagina1()
      },
    );
  }
}
