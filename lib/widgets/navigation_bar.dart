import 'package:flutter/material.dart';
import 'package:practica/widgets/screens/characters.dart';
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
    const CharacterScreen(),
    const LocationScreen(),
    const HomeScreen(),
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
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: const Icon(Icons.person), label: 'Characters', backgroundColor: Theme.of(context).primaryColor),
        BottomNavigationBarItem(icon: const Icon(Icons.place), label: 'Locations', backgroundColor: Theme.of(context).primaryColor),
        BottomNavigationBarItem(icon: const Icon(Icons.settings), label: 'Options', backgroundColor: Theme.of(context).primaryColor),
      ],
      currentIndex: selected,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: itemTapped,
      )
    );
  }
}