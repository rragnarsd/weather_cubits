// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hour_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HourModel _$HourModelFromJson(Map<String, dynamic> json) {
  return _HourModel.fromJson(json);
}

/// @nodoc
mixin _$HourModel {
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double? get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  int? get isDay => throw _privateConstructorUsedError;
  ConditionModel? get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph')
  double? get windMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_degree')
  int? get windDegree => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String? get windDir => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  int? get cloud => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  double? get feelslikeC => throw _privateConstructorUsedError;
  @JsonKey(name: 'windchill_c')
  double? get windchillC => throw _privateConstructorUsedError;
  @JsonKey(name: 'will_it_rain')
  int? get willItRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'chance_of_rain')
  int? get chanceOfRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'will_it_snow')
  int? get willItSnow => throw _privateConstructorUsedError;
  @JsonKey(name: 'chance_of_snow')
  int? get chanceOfSnow => throw _privateConstructorUsedError;
  double? get uv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourModelCopyWith<HourModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourModelCopyWith<$Res> {
  factory $HourModelCopyWith(HourModel value, $Res Function(HourModel) then) =
      _$HourModelCopyWithImpl<$Res, HourModel>;
  @useResult
  $Res call(
      {String? time,
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
      double? uv});

  $ConditionModelCopyWith<$Res>? get condition;
}

/// @nodoc
class _$HourModelCopyWithImpl<$Res, $Val extends HourModel>
    implements $HourModelCopyWith<$Res> {
  _$HourModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? tempC = freezed,
    Object? isDay = freezed,
    Object? condition = freezed,
    Object? windMph = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? humidity = freezed,
    Object? cloud = freezed,
    Object? feelslikeC = freezed,
    Object? windchillC = freezed,
    Object? willItRain = freezed,
    Object? chanceOfRain = freezed,
    Object? willItSnow = freezed,
    Object? chanceOfSnow = freezed,
    Object? uv = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel?,
      windMph: freezed == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double?,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: freezed == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloud: freezed == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslikeC: freezed == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double?,
      windchillC: freezed == windchillC
          ? _value.windchillC
          : windchillC // ignore: cast_nullable_to_non_nullable
              as double?,
      willItRain: freezed == willItRain
          ? _value.willItRain
          : willItRain // ignore: cast_nullable_to_non_nullable
              as int?,
      chanceOfRain: freezed == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int?,
      willItSnow: freezed == willItSnow
          ? _value.willItSnow
          : willItSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      chanceOfSnow: freezed == chanceOfSnow
          ? _value.chanceOfSnow
          : chanceOfSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $ConditionModelCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HourModelCopyWith<$Res> implements $HourModelCopyWith<$Res> {
  factory _$$_HourModelCopyWith(
          _$_HourModel value, $Res Function(_$_HourModel) then) =
      __$$_HourModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
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
      double? uv});

  @override
  $ConditionModelCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$_HourModelCopyWithImpl<$Res>
    extends _$HourModelCopyWithImpl<$Res, _$_HourModel>
    implements _$$_HourModelCopyWith<$Res> {
  __$$_HourModelCopyWithImpl(
      _$_HourModel _value, $Res Function(_$_HourModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? tempC = freezed,
    Object? isDay = freezed,
    Object? condition = freezed,
    Object? windMph = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? humidity = freezed,
    Object? cloud = freezed,
    Object? feelslikeC = freezed,
    Object? windchillC = freezed,
    Object? willItRain = freezed,
    Object? chanceOfRain = freezed,
    Object? willItSnow = freezed,
    Object? chanceOfSnow = freezed,
    Object? uv = freezed,
  }) {
    return _then(_$_HourModel(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel?,
      windMph: freezed == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double?,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: freezed == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloud: freezed == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslikeC: freezed == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double?,
      windchillC: freezed == windchillC
          ? _value.windchillC
          : windchillC // ignore: cast_nullable_to_non_nullable
              as double?,
      willItRain: freezed == willItRain
          ? _value.willItRain
          : willItRain // ignore: cast_nullable_to_non_nullable
              as int?,
      chanceOfRain: freezed == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int?,
      willItSnow: freezed == willItSnow
          ? _value.willItSnow
          : willItSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      chanceOfSnow: freezed == chanceOfSnow
          ? _value.chanceOfSnow
          : chanceOfSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourModel implements _HourModel {
  _$_HourModel(
      {this.time,
      @JsonKey(name: 'temp_c') this.tempC,
      @JsonKey(name: 'is_day') this.isDay,
      this.condition,
      @JsonKey(name: 'wind_mph') this.windMph,
      @JsonKey(name: 'wind_degree') this.windDegree,
      @JsonKey(name: 'wind_dir') this.windDir,
      this.humidity,
      this.cloud,
      @JsonKey(name: 'feelslike_c') this.feelslikeC,
      @JsonKey(name: 'windchill_c') this.windchillC,
      @JsonKey(name: 'will_it_rain') this.willItRain,
      @JsonKey(name: 'chance_of_rain') this.chanceOfRain,
      @JsonKey(name: 'will_it_snow') this.willItSnow,
      @JsonKey(name: 'chance_of_snow') this.chanceOfSnow,
      this.uv});

  factory _$_HourModel.fromJson(Map<String, dynamic> json) =>
      _$$_HourModelFromJson(json);

  @override
  final String? time;
  @override
  @JsonKey(name: 'temp_c')
  final double? tempC;
  @override
  @JsonKey(name: 'is_day')
  final int? isDay;
  @override
  final ConditionModel? condition;
  @override
  @JsonKey(name: 'wind_mph')
  final double? windMph;
  @override
  @JsonKey(name: 'wind_degree')
  final int? windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  final String? windDir;
  @override
  final int? humidity;
  @override
  final int? cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  final double? feelslikeC;
  @override
  @JsonKey(name: 'windchill_c')
  final double? windchillC;
  @override
  @JsonKey(name: 'will_it_rain')
  final int? willItRain;
  @override
  @JsonKey(name: 'chance_of_rain')
  final int? chanceOfRain;
  @override
  @JsonKey(name: 'will_it_snow')
  final int? willItSnow;
  @override
  @JsonKey(name: 'chance_of_snow')
  final int? chanceOfSnow;
  @override
  final double? uv;

  @override
  String toString() {
    return 'HourModel(time: $time, tempC: $tempC, isDay: $isDay, condition: $condition, windMph: $windMph, windDegree: $windDegree, windDir: $windDir, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, windchillC: $windchillC, willItRain: $willItRain, chanceOfRain: $chanceOfRain, willItSnow: $willItSnow, chanceOfSnow: $chanceOfSnow, uv: $uv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourModel &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelslikeC, feelslikeC) ||
                other.feelslikeC == feelslikeC) &&
            (identical(other.windchillC, windchillC) ||
                other.windchillC == windchillC) &&
            (identical(other.willItRain, willItRain) ||
                other.willItRain == willItRain) &&
            (identical(other.chanceOfRain, chanceOfRain) ||
                other.chanceOfRain == chanceOfRain) &&
            (identical(other.willItSnow, willItSnow) ||
                other.willItSnow == willItSnow) &&
            (identical(other.chanceOfSnow, chanceOfSnow) ||
                other.chanceOfSnow == chanceOfSnow) &&
            (identical(other.uv, uv) || other.uv == uv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      tempC,
      isDay,
      condition,
      windMph,
      windDegree,
      windDir,
      humidity,
      cloud,
      feelslikeC,
      windchillC,
      willItRain,
      chanceOfRain,
      willItSnow,
      chanceOfSnow,
      uv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HourModelCopyWith<_$_HourModel> get copyWith =>
      __$$_HourModelCopyWithImpl<_$_HourModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourModelToJson(
      this,
    );
  }
}

abstract class _HourModel implements HourModel {
  factory _HourModel(
      {final String? time,
      @JsonKey(name: 'temp_c') final double? tempC,
      @JsonKey(name: 'is_day') final int? isDay,
      final ConditionModel? condition,
      @JsonKey(name: 'wind_mph') final double? windMph,
      @JsonKey(name: 'wind_degree') final int? windDegree,
      @JsonKey(name: 'wind_dir') final String? windDir,
      final int? humidity,
      final int? cloud,
      @JsonKey(name: 'feelslike_c') final double? feelslikeC,
      @JsonKey(name: 'windchill_c') final double? windchillC,
      @JsonKey(name: 'will_it_rain') final int? willItRain,
      @JsonKey(name: 'chance_of_rain') final int? chanceOfRain,
      @JsonKey(name: 'will_it_snow') final int? willItSnow,
      @JsonKey(name: 'chance_of_snow') final int? chanceOfSnow,
      final double? uv}) = _$_HourModel;

  factory _HourModel.fromJson(Map<String, dynamic> json) =
      _$_HourModel.fromJson;

  @override
  String? get time;
  @override
  @JsonKey(name: 'temp_c')
  double? get tempC;
  @override
  @JsonKey(name: 'is_day')
  int? get isDay;
  @override
  ConditionModel? get condition;
  @override
  @JsonKey(name: 'wind_mph')
  double? get windMph;
  @override
  @JsonKey(name: 'wind_degree')
  int? get windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  String? get windDir;
  @override
  int? get humidity;
  @override
  int? get cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  double? get feelslikeC;
  @override
  @JsonKey(name: 'windchill_c')
  double? get windchillC;
  @override
  @JsonKey(name: 'will_it_rain')
  int? get willItRain;
  @override
  @JsonKey(name: 'chance_of_rain')
  int? get chanceOfRain;
  @override
  @JsonKey(name: 'will_it_snow')
  int? get willItSnow;
  @override
  @JsonKey(name: 'chance_of_snow')
  int? get chanceOfSnow;
  @override
  double? get uv;
  @override
  @JsonKey(ignore: true)
  _$$_HourModelCopyWith<_$_HourModel> get copyWith =>
      throw _privateConstructorUsedError;
}
