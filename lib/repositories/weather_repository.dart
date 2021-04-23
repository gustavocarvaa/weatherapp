import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weatherapp/models/weather_model.dart';

class WeatherRepo {
  Future<WeatherModel> getWeather(String city) async {
    // final http.Response result = await http.Client().get('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=43ea6baaad7663dc17637e22ee6f78f2');

    // if(result.statusCode != 200) {
    //   throw Exception();
    // }
    // var decoded = jsonDecode(result.body);
    // var weather = WeatherModel.fromJson(decoded);
    var weather = WeatherModel.fromJson({
    "coord": {
        "lon": -38.4808,
        "lat": -10.075
    },
    "weather": [
        {
            "id": 500,
            "main": "Rain",
            "description": "light rain",
            "icon": "10n"
        }
    ],
    "base": "stations",
    "main": {
        "temp": 297.9,
        "feels_like": 298.36,
        "temp_min": 297.9,
        "temp_max": 297.9,
        "pressure": 1013,
        "humidity": 74,
        "sea_level": 1013,
        "grnd_level": 975
    },
    "visibility": 10000,
    "wind": {
        "speed": 1.74,
        "deg": 121,
        "gust": 3.49
    },
    "rain": {
        "1h": 0.5792
    },
    "clouds": {
        "all": 96
    },
    "dt": 1619045478,
    "sys": {
        "country": "BR",
        "sunrise": 1618994254,
        "sunset": 1619036832
    },
    "timezone": -10800,
    "id": 3459922,
    "name": "Jeremoabo",
    "cod": 200
});

    return weather;
  }
}