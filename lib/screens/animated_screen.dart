import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _with = 100;
  double _height = 100;
  Color _color = Color.fromARGB(255, 63, 81, 181);
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    final random = Random();

    _with = random.nextInt(300).toDouble() + 50;
    _height = random.nextInt(300).toDouble() + 50;
    _color = Color.fromRGBO(
        random.nextInt(300), random.nextInt(300), random.nextInt(300), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutCubic,
        width: _with,
        height: _height,
        decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
