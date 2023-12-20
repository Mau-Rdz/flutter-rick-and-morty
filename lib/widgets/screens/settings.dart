import 'package:flutter/material.dart';
import 'package:practica/widgets/local_storage/local_storage.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    void logoutFunction() {
      deleteData("token");
      Navigator.pop(context);
      Navigator.pop(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', textDirection: TextDirection.ltr),
        backgroundColor: Theme.of(context).primaryColor,
        titleTextStyle: TextStyle(
          color: Theme.of(context).textTheme.bodyLarge!.color,
          fontSize: 30,
        ),
      ),
      body: Column(
        children: [
          const Text("Light mode", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          LogoutButton(logoutFunction: logoutFunction,),
          const Text("Dark mode", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          LogoutButton2(logoutFunction: logoutFunction,)
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
      backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
      foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).scaffoldBackgroundColor),

    ),
    child: const Text('LightMode'),
  );
  }
}
class LogoutButton2 extends StatelessWidget {

  final Function? logoutFunction;

  const LogoutButton2({super.key, this.logoutFunction});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: () {
      logoutFunction!();
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
      foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).scaffoldBackgroundColor),

    ),
    child: const Text('DarkMode'),
  );
  }
}