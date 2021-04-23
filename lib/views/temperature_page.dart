import 'package:flutter/material.dart';
import 'package:weatherapp/utils/widgets/temperature.dart';
import 'package:weatherapp/utils/widgets/title.dart';

class TemperaturePage extends StatefulWidget {
  @override
  _TemperaturePageState createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 30),
          ),
          SizedBox(height: 20),
          MainTitle(title: 'City'),
          MainTemperature(temperature: 5.1),
          MinMax(min: 1.0, max: 9.4),
        ],
      ),
    );
  }
}
