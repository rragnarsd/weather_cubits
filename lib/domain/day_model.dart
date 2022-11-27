// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_cubits/domain/condition_model.dart';

part 'day_model.freezed.dart';
part 'day_model.g.dart';

@freezed
class DayModel with _$DayModel {
  factory DayModel({
    @JsonKey(name: 'maxtemp_c') double? maxtempC,
    @JsonKey(name: 'mintemp_c') double? mintempC,
    @JsonKey(name: 'avgtemp_c') double? avgtempC,
    double? avghumidity,
    @JsonKey(name: 'daily_will_it_rain') int? dailyWillItRain,
    @JsonKey(name: 'daily_chance_of_rain') int? dailyChanceOfRain,
    @JsonKey(name: 'daily_will_it_snow') int? dailyWillItSnow,
    @JsonKey(name: 'daily_chance_of_snow') int? dailyChanceOfSnow,
    ConditionModel? condition,
    double? uv,
  }) = _DayModel;

  factory DayModel.fromJson(Map<String, dynamic> json) => _$DayModelFromJson(json);
}
