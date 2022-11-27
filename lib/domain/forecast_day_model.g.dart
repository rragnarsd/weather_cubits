// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastDayModel _$$_ForecastDayModelFromJson(Map<String, dynamic> json) =>
    _$_ForecastDayModel(
      date: json['date'] as String?,
      day: json['day'] == null
          ? null
          : DayModel.fromJson(json['day'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>?)
          ?.map((e) => HourModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastDayModelToJson(_$_ForecastDayModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'hour': instance.hour,
    };
