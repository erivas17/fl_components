import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/alert_screen.dart';
import '../screens/card_screen.dart';
import '../screens/home_screen.dart';
import '../screens/listview1_screen.dart';
import '../screens/listview2_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'List view 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.bus_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print(settings);

    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
