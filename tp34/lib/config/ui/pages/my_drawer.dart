import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // Supprime le padding par défaut
        children: [
          // Zone rouge (DrawerHeader) qui contient le titre et le logo
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.deepOrange, // Couleur de l'en-tête du Drawer
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, // Aligne le contenu en bas
              crossAxisAlignment: CrossAxisAlignment.center, // Centre horizontalement
              children: [
                const Text(
                  "Menu Principal",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10), // Espacement entre le texte et l'image
                Image.asset('images/boruto.png',width: 70,height: 70),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Accueil"),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text("Galerie"),
            onTap: () {
              Navigator.pushNamed(context, "/gallery");
            },
          ),
          ListTile(
            leading: const Icon(Icons.cloud),
            title: const Text("Météo"),
            onTap: () {
              Navigator.pushNamed(context, "/meteo");
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("À propos"),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: "Mon Application",
                applicationVersion: "1.0.0",
                children: [const Text("Ceci est une application Flutter.")],
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Quitter"),
            onTap: () {
              Navigator.pop(context); // Ferme le Drawer
            },
          ),
        ],
      ),
    );
  }
}
