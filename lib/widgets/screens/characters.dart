import 'package:flutter/material.dart';
import 'package:practica/widgets/characters/characters.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters', textDirection: TextDirection.ltr),
        backgroundColor: Theme.of(context).primaryColor,
        titleTextStyle: TextStyle(
          color: Theme.of(context).textTheme.bodyLarge!.color,
          fontSize: 30,
        ),
      ),
      body: const Center(
        child: CharactersList(),
      ),
    );
  }
}