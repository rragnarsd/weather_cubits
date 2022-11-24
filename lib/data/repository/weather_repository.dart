import 'package:weather_cubits/core/network_helper.dart';
import 'package:weather_cubits/data/models/weather_api.dart';

import 'package:weather_cubits/secrets/env.dart';

class WeatherRepository {
  var client = NetworkHelper();

  static const baseUrl = 'http://api.weatherapi.com/v1';

  Future<WeatherAPI?> getCurrentForcast(
      {required String currentLocation}) async {
    try {
      var response = await client.sendRequest(
        path:
            '/forecast.json?key=$apiKey&q=$currentLocation&days=4&aqi=no&alerts=yes',
      );
      return WeatherAPI.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
