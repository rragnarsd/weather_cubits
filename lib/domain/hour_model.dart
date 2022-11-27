// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_cubits/domain/condition_model.dart';

part 'hour_model.freezed.dart';
part 'hour_model.g.dart';

@freezed
class HourModel with _$HourModel {
  factory HourModel({
    String? time,
    @JsonKey(name: 'temp_c') double? tempC,
    @JsonKey(name: 'is_day') int? isDay,
    ConditionModel? condition,
    @JsonKey(name: 'wind_mph') double? windMph,
    @JsonKey(name: 'wind_degree') int? windDegree,
    @JsonKey(name: 'wind_dir') String? windDir,
    int? humidity,
    int? cloud,
    @JsonKey(name: 'feelslike_c') double? feelslikeC,
    @JsonKey(name: 'windchill_c') double? windchillC,
    @JsonKey(name: 'will_it_rain') int? willItRain,
    @JsonKey(name: 'chance_of_rain') int? chanceOfRain,
    @JsonKey(name: 'will_it_snow') int? willItSnow,
    @JsonKey(name: 'chance_of_snow') int? chanceOfSnow,
    double? uv,
  }) = _HourModel;

  factory HourModel.fromJson(Map<String, dynamic> json) =>
      _$HourModelFromJson(json);
}
