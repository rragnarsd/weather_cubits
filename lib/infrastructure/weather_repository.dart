import 'package:weather_cubits/domain/weather_model.dart';
import 'package:weather_cubits/infrastructure/network_helper.dart';
import 'package:weather_cubits/infrastructure/weather_endpoints.dart';

class WeatherRepository {
  final client = NetworkHelper();

  Future<WeatherModel?> getCurrentForcast(
      {required String currentLocation}) async {
    try {
      var response = await client.sendRequest(
        path: WeatherEndpoints.currentWeather(currentLocation),
      );
      return WeatherModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
