import 'package:flutter/material.dart';
import 'package:practica/widgets/navigation_bar.dart';
import 'package:practica/widgets/screens/account.dart';
import 'package:practica/models/menu_options.dart';
import 'package:practica/widgets/screens/login.dart';

class AppRoutes {
  static const initialRoute = "login";

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: "settings",
        icon: Icons.settings,
        name: "Settings",
        screen: const AccountScreen()),
    MenuOption(
        route: "account",
        icon: Icons.alternate_email,
        name: "Account",
        screen: const AccountScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var option in menuOptions) {
      if (option.route != "login") {
        appRoutes[option.route] = (BuildContext context) => option.screen;
      }
    }
    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => const ModeloAppBottomBarApp(),
    '/account': (BuildContext context) => const AccountScreen(),
    '/login': (BuildContext context) => LoginCustom(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => LoginCustom());
  }
}
