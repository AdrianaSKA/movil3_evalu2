import 'package:evalucion_2/screens/CiudadesScreen.dart';
import 'package:evalucion_2/screens/GastronomiaScreen.dart';
import 'package:flutter/material.dart';


class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.restaurant), text: "Gastronomía"),
            Tab(icon: Icon(Icons.location_city), text: "Ciudades"),
          ],
        ),
        body: const TabBarView(
          children: [
            GastronomiaScreen(),
            CiudadesScreen(),
          ],
        ),
      ),
    );
  }
}
