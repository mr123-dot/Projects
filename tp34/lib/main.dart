import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculatrice',
      home: const AverageCalculator(),
    );
  }
}

class AverageCalculator extends StatefulWidget {
  const AverageCalculator({super.key});

  @override
  AverageCalculatorState createState() => AverageCalculatorState();
}

class AverageCalculatorState extends State<AverageCalculator> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  double? sum;
  double? average;
  double? product;
  double? subtraction;

  void _calculateAll() {
    double? num1 = double.tryParse(_firstNumberController.text);
    double? num2 = double.tryParse(_secondNumberController.text);

    if (num1 != null && num2 != null) {
      setState(() {
        sum = num1 + num2;
        average = (num1 + num2) / 2;
        product = num1 * num2;
        subtraction = num1 - num2;
      });
    } else {
      setState(() {
        sum = null;
        average = null;
        product = null;
        subtraction = null;
      });
    }
  }

  void _clearFields() {
    setState(() {
      _firstNumberController.clear();
      _secondNumberController.clear();
      sum = null;
      average = null;
      product = null;
      subtraction = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opération', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.calculate, color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: _clearFields,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _firstNumberController,
              decoration: const InputDecoration(
                labelText: 'Nombre 1',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _secondNumberController,
              decoration: const InputDecoration(
                labelText: 'Nombre 2',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 25),

            // Single Calculate Button
            ElevatedButton(
              onPressed: _calculateAll,
              child: const Text('Calculer'),
            ),

            const SizedBox(height: 20),

            // Display Results
            if (sum != null)
              Text('Somme : $sum',
                  style: const TextStyle(fontSize: 20, color: Colors.blue)),
            if (average != null)
              Text('Moyenne : $average',
                  style: const TextStyle(fontSize: 20, color: Colors.green)),
            if (product != null)
              Text('Produit : $product',
                  style: const TextStyle(fontSize: 20, color: Colors.pink)),
            if (subtraction != null)
              Text('Soustraction : $subtraction',
                  style: const TextStyle(fontSize: 20, color: Colors.brown)),
          ],
        ),
      ),
    );
  }
}
