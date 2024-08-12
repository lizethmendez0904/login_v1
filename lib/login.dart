import 'package:flutter/material.dart';
import 'package:login_v1/pagina1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: contenido(),
    );
  }
}

Widget contenido() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('lib/img/Fondo-1.png'), fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          saludo(),
          usuario(),
          password(),
          boton(),
        ],
      ),
    ),
  );
}

Widget saludo() {
  return const Text(
    "Bienvenida",
    style: TextStyle(color: Colors.black, fontSize: 50),
  );
}

Widget usuario() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "usuario",
          fillColor: Color.fromARGB(255, 211, 225, 224),
          filled: true),
    ),
  );
}

Widget password() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "contraseña",
          fillColor: Color.fromARGB(255, 105, 216, 244),
          filled: true),
    ),
  );
}

Widget boton() {
  return SizedBox(
    width: 200,
    height: 50,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => const Pagina1(),
            ));
      },
      child: Text('Ingreso'),
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.cyan),
      ),
    ),
  );
}

Widget ingreso() {
  return const Text(
    "Bienvenida",
    style: TextStyle(color: Colors.black, fontSize: 50),
  );
}
