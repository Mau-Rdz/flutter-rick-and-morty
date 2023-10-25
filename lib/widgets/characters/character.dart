import 'package:flutter/material.dart';

class CharacterList extends StatelessWidget {
  final List<Map<String, dynamic>> characters;

  const CharacterList({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (BuildContext context, int index) {
          final character = characters[index];
          return ListTile(
            title: Text(character[index]["name"] ?? 'No name'),
            subtitle: Text(character[index]["species"] ?? 'no specie'),
          );
        },
      ),
    );
  }
}



class MyDataWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const MyDataWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final name = data["name"];
    return ListTile(
      title: Text(name),
      subtitle: Text(data["species"] ?? 'No species'),
      // Add more widgets as needed based on your data structure.
    );
  }
}