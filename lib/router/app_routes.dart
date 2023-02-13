import 'package:componentes/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /* MenuOption(
      route: 'home',
      icon: Icons.account_balance,
      name: 'HomeScreen',
      screen: const HomeScreen(),
    ), */

    MenuOption(
      route: 'listView1',
      icon: Icons.add_alert,
      name: 'ListView1',
      screen: const ListView1Screen(),
    ),
    MenuOption(
      route: 'listView2',
      icon: Icons.add_alert,
      name: 'ListView2',
      screen: const ListView2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_sharp,
      name: 'Alert Screen',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_membership,
      name: 'Card Screen',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.account_circle_outlined,
      name: 'Avatar Screen',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.amp_stories_rounded,
      name: 'Animated Screen',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'input',
      icon: Icons.format_align_center_outlined,
      name: 'Input Screen',
      screen: const InputScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.sledding_rounded,
      name: 'Slider Screen',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'ListViewBuilder',
      icon: Icons.line_style_outlined,
      name: 'Infinite Scroll & Pull to refresh',
      screen: const ListViewBuilderScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final options in menuOptions) {
      appRoutes.addAll({
        options.route: (context) => options.screen,
      });
    }

    return appRoutes;
  }

/*   static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listView1': (context) => const ListView1Screen(),
    'listView2': (context) => const ListView2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
