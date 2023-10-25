import 'package:flutter/material.dart';
import 'package:practica/widgets/characters/characters.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica', textDirection: TextDirection.ltr),
        backgroundColor: Colors.red,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      body: const Center(
        child: CharactersList(),
      ),
    );
  }
}