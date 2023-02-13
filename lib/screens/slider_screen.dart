import 'package:flutter/material.dart';
import 'package:componentes/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            /* Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              },
            ), */

            /* Switch(
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ), */

            CheckboxListTile(
              title: const Text('Habilitar Chekbox'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value ?? true;
              }),
            ),
            SwitchListTile.adaptive(
              title: const Text('Habilitar Chekbox'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://images.pexels.com/photos/15129223/pexels-photo-15129223.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
