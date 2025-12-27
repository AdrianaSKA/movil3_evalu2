import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Nombre: Adriana Escalante"),
            const Text("GitHub: AdrianaSKA"),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () => Navigator.pushNamed(context, "/login"),
              child: const Text("Login"),
            ),
            FilledButton(
              onPressed: () => Navigator.pushNamed(context, "/registro"),
              child: const Text("Registro"),
            ),
          ],
        ),
      ),
    );
  }
}
