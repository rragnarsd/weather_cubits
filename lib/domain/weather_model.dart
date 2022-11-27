import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_cubits/domain/current_model.dart';
import 'package:weather_cubits/domain/forecast_model.dart';
import 'package:weather_cubits/domain/location_model.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    LocationModel? location,
    CurrentModel? current,
    ForecastModel? forecast,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}
