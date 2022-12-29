import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    "Pianos",
    "Cuerda pulsada",
    "Cuerda frotada",
    "maderas",
    "metales"
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("ListView 1")),
        ),
        body: ListView(
          children: [
            ...options
                .map((instrument) => ListTile(
                      leading: const Icon(Icons.access_time_rounded),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      title: Text(instrument),
                    ))
                .toList(),
          ],
        ));
  }
}
