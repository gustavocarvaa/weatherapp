import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/controllers/weather_bloc.dart';
import 'package:weatherapp/repositories/weather_repository.dart';
import 'package:weatherapp/views/search_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          elevation: 0.0,
        ),
        backgroundColor: Colors.grey.shade900,
        body: BlocProvider(create: (context) => WeatherBloc(WeatherRepo()),
        child: SearchPage(),
        )
        );
  }
}
