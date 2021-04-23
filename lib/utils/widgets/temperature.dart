import 'package:flutter/material.dart';
import 'package:weatherapp/utils/widgets/title.dart';

class MainTemperature extends StatelessWidget {
  final double temperature;

  const MainTemperature({Key key, @required this.temperature}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainTitle(title: temperature.toString()),
        SizedBox(height: 8),
        Subtitle(text: 'Temperature',),
      ],
    );
  }
}

class MinMax extends StatelessWidget {
  final double min;
  final double max;

  const MinMax({Key key, this.min, this.max}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MainTitle(title: min.toString()),
        SizedBox(height: 8),
        Subtitle(text: 'Min',),
        MainTitle(title: max.toString()),
        SizedBox(height: 8),
        Subtitle(text: 'Max',),
      ],
    );
  }
}