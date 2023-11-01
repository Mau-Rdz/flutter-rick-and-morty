import 'package:flutter/material.dart';
import 'package:practica/widgets/locations/locations.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica', textDirection: TextDirection.ltr),
        backgroundColor: Colors.green,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      body: const Center(
        child: LocationsList(),
      ),
    );
  }
}