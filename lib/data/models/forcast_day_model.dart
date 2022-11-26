import 'package:weather_cubits/data/models/day_model.dart';
import 'package:weather_cubits/data/models/hour_model.dart';

class ForecastdayModel {
  String? date;
  DayModel? day;
  List<HourModel>? hour;
  ForecastdayModel({this.date});

  ForecastdayModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    day = json['day'] != null ? DayModel.fromJson(json['day']) : null;
    if (json['hour'] != null) {
      hour = <HourModel>[];
      json['hour'].forEach((v) {
        hour!.add(HourModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    if (day != null) {
      data['day'] = day!.toJson();
    }
    if (hour != null) {
      data['hour'] = hour!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
