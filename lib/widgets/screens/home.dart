import 'package:flutter/material.dart';
import 'package:practica/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            final route = AppRoutes.menuOptions[index];
            return ListTile(
              leading: Icon(
                route.icon,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(route.name,
                  style: Theme.of(context).textTheme.bodyMedium),
              onTap: () {
                Navigator.pushNamed(context, route.route);
              },
            );
          },
          separatorBuilder: ((_, __) => const Divider()),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
