import 'package:flutter/material.dart';
import 'package:practica/widgets/characters.dart';

class homeScreen_ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica', textDirection: TextDirection.ltr),
        backgroundColor: Colors.red,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      body: Center(
        child: characters(),
      ),
    );
  }
}