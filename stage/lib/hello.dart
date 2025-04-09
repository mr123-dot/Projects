import 'dart:math';

void main() {
  final random = Random();
  int randomNumber = random.nextInt(100); // Generates a random number between 0 and 99
  print('Random number: $randomNumber');

  List<String> greetings = ['Hello', 'Hi', 'Hey', 'Welcome', 'Greetings'];
  String randomGreeting = greetings[random.nextInt(greetings.length)];
  print('$randomGreeting, Dart!');
}