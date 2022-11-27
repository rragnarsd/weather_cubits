// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourModel _$$_HourModelFromJson(Map<String, dynamic> json) => _$_HourModel(
      time: json['time'] as String?,
      tempC: (json['temp_c'] as num?)?.toDouble(),
      isDay: json['is_day'] as int?,
      condition: json['condition'] == null
          ? null
          : ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      windMph: (json['wind_mph'] as num?)?.toDouble(),
      windDegree: json['wind_degree'] as int?,
      windDir: json['wind_dir'] as String?,
      humidity: json['humidity'] as int?,
      cloud: json['cloud'] as int?,
      feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
      windchillC: (json['windchill_c'] as num?)?.toDouble(),
      willItRain: json['will_it_rain'] as int?,
      chanceOfRain: json['chance_of_rain'] as int?,
      willItSnow: json['will_it_snow'] as int?,
      chanceOfSnow: json['chance_of_snow'] as int?,
      uv: (json['uv'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_HourModelToJson(_$_HourModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temp_c': instance.tempC,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'wind_mph': instance.windMph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslikeC,
      'windchill_c': instance.windchillC,
      'will_it_rain': instance.willItRain,
      'chance_of_rain': instance.chanceOfRain,
      'will_it_snow': instance.willItSnow,
      'chance_of_snow': instance.chanceOfSnow,
      'uv': instance.uv,
    };
