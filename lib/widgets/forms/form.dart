import 'package:practica/utils/utils.dart';
import 'package:flutter/material.dart';


class emailField extends StatelessWidget with Utils {
  
  final Function(String) onChange;

  emailField({required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: setWidth(context, widthPercent: 90),
        child: TextField(
          onChanged: ((value) => onChange(value)),
          decoration: InputDecoration(
            labelText: 'correo',
            hintText: 'Escribe su correo',
            icon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class passwordField extends StatelessWidget with Utils {

  final Function(String) onChange;

  passwordField({required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: setWidth(context, widthPercent: 90),
        child: TextField(
          onChanged: (value) => onChange(value),
          obscureText: true, // Set this to true to hide the entered text
          decoration: InputDecoration(
            labelText: 'Contraseña',
            hintText: 'Escribe su contraseña',
            icon: Icon(Icons.lock), // You can use the lock icon for passwords
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class ErrorMessage extends StatelessWidget with Utils {

  final String message;

  ErrorMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: setWidth(context, widthPercent: 90),
        child: Text(
          message,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}