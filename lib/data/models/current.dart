import 'package:weather_cubits/data/models/condition.dart';

class Current {
  int? lastUpdatedEpoch;
  String? lastUpdated;
  double? tempC;
  int? isDay;
  Condition? condition;
  double? windMph;
  int? windDegree;
  String? windDir;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? uv;
  double? gustMph;

  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.isDay,
    this.condition,
    this.windMph,
    this.windDegree,
    this.windDir,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.uv,
    this.gustMph,
  });

  Current.fromJson(Map<String, dynamic> json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    uv = json['uv'];
    gustMph = json['gust_mph'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['last_updated_epoch'] = lastUpdatedEpoch;
    data['last_updated'] = lastUpdated;
    data['temp_c'] = tempC;
    data['is_day'] = isDay;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['wind_mph'] = windMph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['uv'] = uv;
    data['gust_mph'] = gustMph;
    return data;
  }
}
