import 'package:weather_cubits/data/models/condition.dart';

class Hour {
  String? time;
  double? tempC;
  int? isDay;
  Condition? condition;
  double? windMph;
  int? windDegree;
  String? windDir;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? windchillC;
  int? willItRain;
  int? chanceOfRain;
  int? willItSnow;
  int? chanceOfSnow;
  double? uv;

  Hour({
    this.time,
    this.tempC,
    this.isDay,
    this.condition,
    this.windMph,
    this.windDegree,
    this.windDir,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.windchillC,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.uv,
  });

  Hour.fromJson(Map<String, dynamic> json) {
    time = json['time'];
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
    windchillC = json['windchill_c'];
    willItRain = json['will_it_rain'];
    chanceOfRain = json['chance_of_rain'];
    willItSnow = json['will_it_snow'];
    chanceOfSnow = json['chance_of_snow'];
    uv = json['uv'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
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
    data['windchill_c'] = windchillC;
    data['will_it_rain'] = willItRain;
    data['chance_of_rain'] = chanceOfRain;
    data['will_it_snow'] = willItSnow;
    data['chance_of_snow'] = chanceOfSnow;
    data['uv'] = uv;
    return data;
  }
}
