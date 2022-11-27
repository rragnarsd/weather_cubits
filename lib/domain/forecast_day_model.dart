import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_cubits/domain/day_model.dart';
import 'package:weather_cubits/domain/hour_model.dart';

part 'forecast_day_model.freezed.dart';
part 'forecast_day_model.g.dart';

@freezed
class ForecastDayModel with _$ForecastDayModel {
  factory ForecastDayModel({
    String? date,
    DayModel? day,
    List<HourModel>? hour,
  }) = _ForecastDayModel;

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayModelFromJson(json);
}
