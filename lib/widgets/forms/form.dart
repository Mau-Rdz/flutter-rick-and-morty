import 'package:practica/utils/utils.dart';
import 'package:flutter/material.dart';


class EmailField extends StatelessWidget with Utils {
  
  final TextEditingController ? textInName;

  EmailField({super.key, required this.textInName});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: setWidth(context, widthPercent: 90),
        child: TextField(
            controller: textInName,
            decoration: const InputDecoration(
              labelText: 'username',
              hintText: 'Escribe su username',
              icon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
            style: TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
        ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget with Utils {

  final TextEditingController ? textInPass;

  PasswordField({super.key, required this.textInPass});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: setWidth(context, widthPercent: 90),
        child: TextField(
          controller: textInPass,
          obscureText: true, // Set this to true to hide the entered text
          decoration: const InputDecoration(
            labelText: 'Contraseña',
            hintText: 'Escribe su contraseña',
            icon: Icon(Icons.lock), // You can use the lock icon for passwords
            border: OutlineInputBorder(),
          ),
          style: TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
        ),
      ),
    );
  }
}

class ErrorMessage extends StatelessWidget with Utils {

  final String message;

  ErrorMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: setWidth(context, widthPercent: 90),
        child: Text(
          message,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}