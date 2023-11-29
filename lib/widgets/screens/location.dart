import 'package:flutter/material.dart';
import 'package:practica/widgets/locations/locations.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations', textDirection: TextDirection.ltr),
        backgroundColor: Theme.of(context).primaryColor,
        titleTextStyle: TextStyle(
          color: Theme.of(context).textTheme.bodyLarge!.color,
          fontSize: 30,
        ),
      ),
      body: const Center(
        child: LocationsList(),
      ),
    );
  }
}