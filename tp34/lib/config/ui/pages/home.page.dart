import 'package:flutter/material.dart';
import 'my_drawer.dart'; // Import du Drawer

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: const MyDrawer(), // Intégration du Drawer
      body: const Center(
        child: Text(
          "Bienvenue sur la page d'accueil !",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
