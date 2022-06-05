import 'package:flutter/material.dart';
import 'package:latabernadelgoblin/login/Login.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  static String id = 'init';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de Inicio'),
        backgroundColor: const Color.fromARGB(200, 10, 150, 20),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(200, 10, 150, 20),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                _showHomePage(context);
              },
              child: const Text("Invitado"),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(200, 10, 150, 20),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                _showRegisterPage(context);
              },
              child: const Text("Registrarse"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(200, 10, 150, 20),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                _showLoginPage(context);
              },
              child: const Text("Iniciar Sesión"),
            ),
          ],
        ),
      ),
    );
  }
}

void _showRegisterPage(BuildContext context) {
  Navigator.of(context).pushNamed("/register");
}

void _showLoginPage(BuildContext context) {
  Navigator.of(context).pushNamed("/login");
}

void _showHomePage(BuildContext context) {
  Navigator.of(context).pushNamed("/home");
}

void _showCartPage(BuildContext context) {
  Navigator.of(context).pushNamed("/lib/src/products/cart_page.dart");
}
