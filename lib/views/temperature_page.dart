import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/controllers/weather_bloc.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/repositories/weather_repository.dart';
import 'package:weatherapp/utils/widgets/temperature.dart';
import 'package:weatherapp/utils/widgets/title.dart';
import 'package:weatherapp/views/search_page.dart';

class TemperaturePage extends StatefulWidget {
  final String cityName;

  TemperaturePage({Key key, this.cityName}) : super(key: key);

  @override
  _TemperaturePageState createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    return 
        // appBar: AppBar(
        //   toolbarHeight: 10,
        //   // automaticallyImplyLeading: true,
        //   title: Text('teste'),
        //   leading: GestureDetector(onTap: () {
        //     weatherBloc.add(ResetWeather());
        //     Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (_) => SearchPage()), (route) => false);
        //   }, 
        //   child: Icon(Icons.arrow_back_ios)),
        //   backgroundColor: Colors.grey.shade900,
        //   elevation: 0.0,
        // ),
        // backgroundColor: Colors.grey.shade900,
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
              Main main = state.weatherModel.main;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.grey,
                    margin: EdgeInsets.symmetric(vertical: 30),
                  ),
                  MainTitle(title: widget.cityName),
                  MainTemperature(temperature: (main.temp/10).roundToDouble()),
                  MinMax(min: (main.tempMin/10).roundToDouble(), max: (main.tempMax/10).roundToDouble()),
                ],
              );
            }),
          ),
        );
  }
}
