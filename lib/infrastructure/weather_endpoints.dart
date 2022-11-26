import 'package:weather_cubits/secrets/env.dart';

class WeatherEndpoints {
  static const baseUrl = 'http://api.weatherapi.com/v1';
  static String currentWeather(String currentLocation) =>
      "/forecast.json?key=$apiKey&q=$currentLocation&days=4&aqi=no&alerts=yes";
}
