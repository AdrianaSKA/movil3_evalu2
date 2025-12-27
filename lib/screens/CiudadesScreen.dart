import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CiudadesScreen extends StatelessWidget {
  const CiudadesScreen({super.key});

  Future<List<dynamic>> cargarCiudades() async {
    final String jsonString =
        await rootBundle.loadString('assets/data/ciudades2.json');
    final data = json.decode(jsonString);
    return data['ciudades'];
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Ciudades")),
      body: FutureBuilder(
        future: cargarCiudades(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final ciudades = snapshot.data!;

          return ListView.builder(
            itemCount: ciudades.length,
            itemBuilder: (context, index) {
              final ciudad = ciudades[index];
              final info = ciudad['informacion'];

              return ListTile(
                leading: Image.network(
                  info['imagen'],
                  width: 50,
                  height: 50,
                ),
                title: Text(ciudad['nombre']),
                subtitle: Text(ciudad['provincia']),
                onTap: () => alertaCiudad(
                  context,
                  ciudad['nombre'],
                  ciudad['descripcion'],
                ),
              );
            },
          );
        },
      ),
    );
  }
}


void alertaCiudad(context, nombre, descripcion) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(nombre),
        content: Text(descripcion),
      );
    },
  );
}
