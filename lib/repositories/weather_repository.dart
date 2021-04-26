import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weatherapp/models/weather_model.dart';

class WeatherRepo {
  Future<WeatherModel> getWeather(String city) async {
    final http.Response result = await http.Client().get('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=43ea6baaad7663dc17637e22ee6f78f2');

    if(result.statusCode != 200) {
      throw Exception();
    }
    var decoded = jsonDecode(result.body);
    var weather = WeatherModel.fromJson(decoded);
    return weather;
  }
}