import 'package:flutter/material.dart';
import 'package:practica/widgets/local_storage/local_storage.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {

    void logoutFunction() {
      deleteData("token");
      Navigator.pop(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica', textDirection: TextDirection.ltr),
        backgroundColor: Colors.green,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      body: Column(
        children: [
          const Text("Account", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          LogoutButton(logoutFunction: logoutFunction,)
        ],
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {

  final Function? logoutFunction;

  const LogoutButton({super.key, this.logoutFunction});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: () {
      logoutFunction!();
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

    ),
    child: const Text('cerrar sesión'),
  );
  }
}