import 'package:flutter/material.dart';
import 'package:practica/widgets/screens/account.dart';
import 'package:practica/widgets/screens/characters.dart';
import 'package:practica/widgets/screens/home.dart';
import 'package:practica/widgets/screens/location.dart';
import 'package:practica/models/menu_options.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: "home",
        icon: Icons.home,
        name: "Home",
        screen: const HomeScreen()),
    MenuOption(
        route: "character",
        icon: Icons.card_giftcard,
        name: "Character",
        screen: const CharacterScreen()),
    MenuOption(
        route: "location",
        icon: Icons.card_giftcard,
        name: "Locations",
        screen: const LocationScreen()),
    MenuOption(
        route: "account",
        icon: Icons.alternate_email,
        name: "Account",
        screen: const AccountScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => const HomeScreen(),
    '/character': (BuildContext context) => const CharacterScreen(),
    '/location': (BuildContext context) => const LocationScreen(),
    '/account': (BuildContext context) => const AccountScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
