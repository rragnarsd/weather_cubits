import 'package:weather_cubits/domain/forcast_day_model.dart';

class ForecastModel {
  List<ForecastdayModel>? forecastday;

  ForecastModel({this.forecastday});

  ForecastModel.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      forecastday = <ForecastdayModel>[];
      json['forecastday'].forEach((v) {
        forecastday!.add(ForecastdayModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (forecastday != null) {
      data['forecastday'] = forecastday!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
