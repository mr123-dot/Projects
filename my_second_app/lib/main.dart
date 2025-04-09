import 'package:flutter/material.dart';

void main() {
  runApp(MyApp() as Widget);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(title: Text('Calculator'), centerTitle: true),
        body: Center(
          child: Text(
            'Bienvenue dans votre Calculatrice',
            style: TextStyle(fontSize: 20),
          ),  
        ),  
      ),  
    );  
  }
}
