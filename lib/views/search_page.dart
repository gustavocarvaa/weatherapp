import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/controllers/weather_bloc.dart';
import 'package:weatherapp/utils/widgets/confirm_button.dart';
import 'package:weatherapp/utils/widgets/title.dart';
import 'package:weatherapp/utils/widgets/search_field.dart';
import 'package:weatherapp/views/temperature_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) => state is WeatherIsLoaded
          ? TemperaturePage(cityName: state.cityName)
          : SingleChildScrollView(
              child: Container(
                color: Colors.grey.shade900,
                alignment: Alignment.center,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    //TODO: modify to an image
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.grey,
                      margin: EdgeInsets.symmetric(vertical: 30),
                    ),
                    MainTitle(title: 'Search Weather'),
                    SizedBox(height: 8),
                    Subtitle(text: 'Instantly'),
                    SizedBox(height: 30),
                    SearchField(
                        controller: _textEditingController,
                        hintText: 'City Name'),
                    SizedBox(height: 20),
                      ConfirmButton(
                        title: 'Search',
                        isLoading: state is WeatherIsLoading,
                        onPressed: () => weatherBloc.add(FetchWeather(_textEditingController.text)),
                      )
                  ],
                ),
              ),
            ),
    );
  }
}
