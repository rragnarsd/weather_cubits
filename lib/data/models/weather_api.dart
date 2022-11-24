import 'package:weather_cubits/data/models/current.dart';
import 'package:weather_cubits/data/models/forecast.dart';
import 'package:weather_cubits/data/models/location.dart';

class WeatherAPI {
  Location? location;
  Current? current;
  Forecast? forecast;

  WeatherAPI({this.location, this.current, this.forecast});

  WeatherAPI.fromJson(Map<String, dynamic> json) {
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
    forecast =
        json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (current != null) {
      data['current'] = current!.toJson();
    }
    if (forecast != null) {
      data['forecast'] = forecast!.toJson();
    }

    return data;
  }
}
