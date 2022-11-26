import 'package:weather_cubits/data/models/current_model.dart';
import 'package:weather_cubits/data/models/forecast_model.dart';
import 'package:weather_cubits/data/models/location_model.dart';

class WeatherModel {
  LocationModel? location;
  CurrentModel? current;
  ForecastModel? forecast;

  WeatherModel({this.location, this.current, this.forecast});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? LocationModel.fromJson(json['location'])
        : null;
    current =
        json['current'] != null ? CurrentModel.fromJson(json['current']) : null;
    forecast = json['forecast'] != null
        ? ForecastModel.fromJson(json['forecast'])
        : null;
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
