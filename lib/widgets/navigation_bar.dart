import 'package:flutter/material.dart';
import 'package:practica/widgets/screens/account.dart';
import 'package:practica/widgets/screens/home.dart';
import 'package:practica/widgets/screens/location.dart';

class ModeloAppBottomBarApp extends StatelessWidget {
  const ModeloAppBottomBarApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(home: ModeloAppBottomBar());
  }
}

class ModeloAppBottomBar extends StatefulWidget {
  const ModeloAppBottomBar({super.key});

  @override
  State<ModeloAppBottomBar> createState() => _ModeloAppBottomBarState();
}

class _ModeloAppBottomBarState extends State<ModeloAppBottomBar> {
  int selected = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const LocationScreen(),
    const AccountScreen(),
  ];

  void itemTapped(int index){
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center( child: _widgetOptions.elementAt(selected)),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.place), label: 'Locations', backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: 'Account', backgroundColor: Colors.green),
      ],
      currentIndex: selected,
      selectedItemColor: Colors.blue,
      onTap: itemTapped,
      )
    );
  }
}