import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider and Checks')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              value: _sliderValue,
              min: 50,
              max: 400,
              onChanged: _sliderEnabled
                  ? (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    }
                  : null,
            ),
            Checkbox(
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() {
                    _sliderEnabled = value ?? true;
                  });
                }),
            CheckboxListTile(
                title: const Text('Habilitar'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),
            Switch(
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),
            SwitchListTile(
                title: const Text('Habilitar el slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),
            Image(
              image: const NetworkImage(
                  'https://eloutput.com/app/uploads-eloutput.com/2020/04/Batman.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            )
          ],
        ),
      ),
    );
  }
}
