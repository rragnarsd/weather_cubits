// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayModel _$DayModelFromJson(Map<String, dynamic> json) {
  return _DayModel.fromJson(json);
}

/// @nodoc
mixin _$DayModel {
  @JsonKey(name: 'maxtemp_c')
  double? get maxtempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_c')
  double? get mintempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC => throw _privateConstructorUsedError;
  double? get avghumidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_will_it_rain')
  int? get dailyWillItRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_chance_of_rain')
  int? get dailyChanceOfRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_will_it_snow')
  int? get dailyWillItSnow => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_chance_of_snow')
  int? get dailyChanceOfSnow => throw _privateConstructorUsedError;
  ConditionModel? get condition => throw _privateConstructorUsedError;
  double? get uv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayModelCopyWith<DayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayModelCopyWith<$Res> {
  factory $DayModelCopyWith(DayModel value, $Res Function(DayModel) then) =
      _$DayModelCopyWithImpl<$Res, DayModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double? maxtempC,
      @JsonKey(name: 'mintemp_c') double? mintempC,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      double? avghumidity,
      @JsonKey(name: 'daily_will_it_rain') int? dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') int? dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') int? dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') int? dailyChanceOfSnow,
      ConditionModel? condition,
      double? uv});

  $ConditionModelCopyWith<$Res>? get condition;
}

/// @nodoc
class _$DayModelCopyWithImpl<$Res, $Val extends DayModel>
    implements $DayModelCopyWith<$Res> {
  _$DayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = freezed,
    Object? mintempC = freezed,
    Object? avgtempC = freezed,
    Object? avghumidity = freezed,
    Object? dailyWillItRain = freezed,
    Object? dailyChanceOfRain = freezed,
    Object? dailyWillItSnow = freezed,
    Object? dailyChanceOfSnow = freezed,
    Object? condition = freezed,
    Object? uv = freezed,
  }) {
    return _then(_value.copyWith(
      maxtempC: freezed == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempC: freezed == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempC: freezed == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      avghumidity: freezed == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyWillItRain: freezed == dailyWillItRain
          ? _value.dailyWillItRain
          : dailyWillItRain // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyChanceOfRain: freezed == dailyChanceOfRain
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyWillItSnow: freezed == dailyWillItSnow
          ? _value.dailyWillItSnow
          : dailyWillItSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyChanceOfSnow: freezed == dailyChanceOfSnow
          ? _value.dailyChanceOfSnow
          : dailyChanceOfSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel?,
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
abstract class _$$_DayModelCopyWith<$Res> implements $DayModelCopyWith<$Res> {
  factory _$$_DayModelCopyWith(
          _$_DayModel value, $Res Function(_$_DayModel) then) =
      __$$_DayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double? maxtempC,
      @JsonKey(name: 'mintemp_c') double? mintempC,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      double? avghumidity,
      @JsonKey(name: 'daily_will_it_rain') int? dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') int? dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') int? dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') int? dailyChanceOfSnow,
      ConditionModel? condition,
      double? uv});

  @override
  $ConditionModelCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$_DayModelCopyWithImpl<$Res>
    extends _$DayModelCopyWithImpl<$Res, _$_DayModel>
    implements _$$_DayModelCopyWith<$Res> {
  __$$_DayModelCopyWithImpl(
      _$_DayModel _value, $Res Function(_$_DayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = freezed,
    Object? mintempC = freezed,
    Object? avgtempC = freezed,
    Object? avghumidity = freezed,
    Object? dailyWillItRain = freezed,
    Object? dailyChanceOfRain = freezed,
    Object? dailyWillItSnow = freezed,
    Object? dailyChanceOfSnow = freezed,
    Object? condition = freezed,
    Object? uv = freezed,
  }) {
    return _then(_$_DayModel(
      maxtempC: freezed == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempC: freezed == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempC: freezed == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      avghumidity: freezed == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyWillItRain: freezed == dailyWillItRain
          ? _value.dailyWillItRain
          : dailyWillItRain // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyChanceOfRain: freezed == dailyChanceOfRain
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyWillItSnow: freezed == dailyWillItSnow
          ? _value.dailyWillItSnow
          : dailyWillItSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyChanceOfSnow: freezed == dailyChanceOfSnow
          ? _value.dailyChanceOfSnow
          : dailyChanceOfSnow // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel?,
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayModel implements _DayModel {
  _$_DayModel(
      {@JsonKey(name: 'maxtemp_c') this.maxtempC,
      @JsonKey(name: 'mintemp_c') this.mintempC,
      @JsonKey(name: 'avgtemp_c') this.avgtempC,
      this.avghumidity,
      @JsonKey(name: 'daily_will_it_rain') this.dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') this.dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') this.dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') this.dailyChanceOfSnow,
      this.condition,
      this.uv});

  factory _$_DayModel.fromJson(Map<String, dynamic> json) =>
      _$$_DayModelFromJson(json);

  @override
  @JsonKey(name: 'maxtemp_c')
  final double? maxtempC;
  @override
  @JsonKey(name: 'mintemp_c')
  final double? mintempC;
  @override
  @JsonKey(name: 'avgtemp_c')
  final double? avgtempC;
  @override
  final double? avghumidity;
  @override
  @JsonKey(name: 'daily_will_it_rain')
  final int? dailyWillItRain;
  @override
  @JsonKey(name: 'daily_chance_of_rain')
  final int? dailyChanceOfRain;
  @override
  @JsonKey(name: 'daily_will_it_snow')
  final int? dailyWillItSnow;
  @override
  @JsonKey(name: 'daily_chance_of_snow')
  final int? dailyChanceOfSnow;
  @override
  final ConditionModel? condition;
  @override
  final double? uv;

  @override
  String toString() {
    return 'DayModel(maxtempC: $maxtempC, mintempC: $mintempC, avgtempC: $avgtempC, avghumidity: $avghumidity, dailyWillItRain: $dailyWillItRain, dailyChanceOfRain: $dailyChanceOfRain, dailyWillItSnow: $dailyWillItSnow, dailyChanceOfSnow: $dailyChanceOfSnow, condition: $condition, uv: $uv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayModel &&
            (identical(other.maxtempC, maxtempC) ||
                other.maxtempC == maxtempC) &&
            (identical(other.mintempC, mintempC) ||
                other.mintempC == mintempC) &&
            (identical(other.avgtempC, avgtempC) ||
                other.avgtempC == avgtempC) &&
            (identical(other.avghumidity, avghumidity) ||
                other.avghumidity == avghumidity) &&
            (identical(other.dailyWillItRain, dailyWillItRain) ||
                other.dailyWillItRain == dailyWillItRain) &&
            (identical(other.dailyChanceOfRain, dailyChanceOfRain) ||
                other.dailyChanceOfRain == dailyChanceOfRain) &&
            (identical(other.dailyWillItSnow, dailyWillItSnow) ||
                other.dailyWillItSnow == dailyWillItSnow) &&
            (identical(other.dailyChanceOfSnow, dailyChanceOfSnow) ||
                other.dailyChanceOfSnow == dailyChanceOfSnow) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.uv, uv) || other.uv == uv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxtempC,
      mintempC,
      avgtempC,
      avghumidity,
      dailyWillItRain,
      dailyChanceOfRain,
      dailyWillItSnow,
      dailyChanceOfSnow,
      condition,
      uv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayModelCopyWith<_$_DayModel> get copyWith =>
      __$$_DayModelCopyWithImpl<_$_DayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayModelToJson(
      this,
    );
  }
}

abstract class _DayModel implements DayModel {
  factory _DayModel(
      {@JsonKey(name: 'maxtemp_c') final double? maxtempC,
      @JsonKey(name: 'mintemp_c') final double? mintempC,
      @JsonKey(name: 'avgtemp_c') final double? avgtempC,
      final double? avghumidity,
      @JsonKey(name: 'daily_will_it_rain') final int? dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') final int? dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') final int? dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') final int? dailyChanceOfSnow,
      final ConditionModel? condition,
      final double? uv}) = _$_DayModel;

  factory _DayModel.fromJson(Map<String, dynamic> json) = _$_DayModel.fromJson;

  @override
  @JsonKey(name: 'maxtemp_c')
  double? get maxtempC;
  @override
  @JsonKey(name: 'mintemp_c')
  double? get mintempC;
  @override
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC;
  @override
  double? get avghumidity;
  @override
  @JsonKey(name: 'daily_will_it_rain')
  int? get dailyWillItRain;
  @override
  @JsonKey(name: 'daily_chance_of_rain')
  int? get dailyChanceOfRain;
  @override
  @JsonKey(name: 'daily_will_it_snow')
  int? get dailyWillItSnow;
  @override
  @JsonKey(name: 'daily_chance_of_snow')
  int? get dailyChanceOfSnow;
  @override
  ConditionModel? get condition;
  @override
  double? get uv;
  @override
  @JsonKey(ignore: true)
  _$$_DayModelCopyWith<_$_DayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
