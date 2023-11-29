import 'package:flutter/material.dart';

class LocationList extends StatelessWidget {
  final List<Map<String, dynamic>> locations;

  const LocationList({super.key, required this.locations});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (BuildContext context, int index) {
          final location = locations[index];
          return ListTile(
            title: Text(location[index]["name"] ?? 'No name'),
            subtitle: Text(location[index]["dimension"] ?? 'no dimension'),
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
      subtitle: Text(data["dimension"] ?? 'No dimension'),
      textColor: Theme.of(context).textTheme.bodyMedium!.color
      // Add more widgets as needed based on your data structure.
    );
  }
}