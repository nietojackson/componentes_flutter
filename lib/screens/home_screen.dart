import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:componentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Componentes en Flutter")),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppTheme.primary,
                  ),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
