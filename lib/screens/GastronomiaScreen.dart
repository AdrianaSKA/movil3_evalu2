import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class GastronomiaScreen extends StatelessWidget {
  const GastronomiaScreen({super.key});

  @override
  Widget build(context) {
    TextEditingController id = TextEditingController();
    TextEditingController plato = TextEditingController();
    TextEditingController ciudad = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Gastronomía")),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: id,
              decoration: const InputDecoration(labelText: "ID Platillo"),
            ),
            TextField(
              controller: plato,
              decoration: const InputDecoration(labelText: "Plato típico"),
            ),
            TextField(
              controller: ciudad,
              decoration: const InputDecoration(labelText: "Ciudad"),
            ),
            FilledButton(
              onPressed: () => guardarPlatillo(id, plato, ciudad),
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> guardarPlatillo(id, plato, ciudad) async {
  DatabaseReference ref =
      FirebaseDatabase.instance.ref("gastronomia/${id.text}");

  await ref.set({
    "plato": plato.text,
    "ciudad": ciudad.text,
  });
}
