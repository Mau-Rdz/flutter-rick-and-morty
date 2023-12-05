import 'package:flutter/material.dart';

class CharacterList extends StatelessWidget {
  final List<Map<String, dynamic>> characters;

  const CharacterList({Key? key, required this.characters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (BuildContext context, int index) {
          final character = characters[index];
          final imageUrl = character["image"];

          return ListTile(
            leading: imageUrl != null
                ? CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )
                : null,
            title: Text(character["name"] ?? 'No name'),
            subtitle: Text(character["species"] ?? 'No species'),
          );
        },
      ),
    );
  }
}

class MyDataWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const MyDataWidget(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = data["name"];
    final imageUrl = data["image"];

    return ListTile(
      leading: imageUrl != null
          ? CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            )
          : null,
      title: Text(name),
      subtitle: Text(data["species"] ?? 'No species'),
      textColor: Theme.of(context).textTheme.bodyMedium!.color,
      // Add more widgets as needed based on your data structure.
    );
  }
}
