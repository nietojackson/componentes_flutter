import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    "Pianos",
    "Cuerda pulsada",
    "Cuerda frotada",
    "Vientos maderas",
    "Vientos metales"
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("ListView 2")),
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(
                    Icons.access_time_filled_sharp,
                    color: AppTheme.primary,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppTheme.primary,
                  ),
                  title: Text(options[index]),
                  onTap: () {
                    final instrument = options[index];
                    print(instrument);
                  },
                ),
            separatorBuilder: (_, __) => const Divider()));
  }
}
