import 'package:flutter/material.dart';

class accountScreen_ extends StatelessWidget {
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
        child: Text('Account Screen'),
      ),
    );
  }
}