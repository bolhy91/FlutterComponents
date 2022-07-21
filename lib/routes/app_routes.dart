import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /*MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),*/
    MenuOption(
        route: 'listView1',
        icon: Icons.list,
        name: 'List View 1 Screen',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'cardScreen',
        icon: Icons.card_giftcard,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'alertScreen',
        icon: Icons.alarm,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatarScreen',
        icon: Icons.supervised_user_circle,
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animateScreen',
        icon: Icons.animation,
        name: 'Animate Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'formScreen',
        icon: Icons.format_align_justify,
        name: 'Form Screen',
        screen: const FormScreen()),
    MenuOption(
        route: 'sliderScreen',
        icon: Icons.slideshow,
        name: 'Slider Screen',
        screen: const SliderScreen()),
    MenuOption(
        route: 'builder',
        icon: Icons.list_alt_outlined,
        name: 'ListView Builder',
        screen: const ListviewBuilderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listView1': (context) => const Listview1Screen(),
    'cardScreen': (context) => const CardScreen(),
    'alertScreen': (context) => const AlertScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
