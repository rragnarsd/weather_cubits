// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forecast_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastDayModel _$ForecastDayModelFromJson(Map<String, dynamic> json) {
  return _ForecastDayModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastDayModel {
  String? get date => throw _privateConstructorUsedError;
  DayModel? get day => throw _privateConstructorUsedError;
  List<HourModel>? get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayModelCopyWith<ForecastDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayModelCopyWith<$Res> {
  factory $ForecastDayModelCopyWith(
          ForecastDayModel value, $Res Function(ForecastDayModel) then) =
      _$ForecastDayModelCopyWithImpl<$Res, ForecastDayModel>;
  @useResult
  $Res call({String? date, DayModel? day, List<HourModel>? hour});

  $DayModelCopyWith<$Res>? get day;
}

/// @nodoc
class _$ForecastDayModelCopyWithImpl<$Res, $Val extends ForecastDayModel>
    implements $ForecastDayModelCopyWith<$Res> {
  _$ForecastDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
    Object? hour = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayModel?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayModelCopyWith<$Res>? get day {
    if (_value.day == null) {
      return null;
    }

    return $DayModelCopyWith<$Res>(_value.day!, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastDayModelCopyWith<$Res>
    implements $ForecastDayModelCopyWith<$Res> {
  factory _$$_ForecastDayModelCopyWith(
          _$_ForecastDayModel value, $Res Function(_$_ForecastDayModel) then) =
      __$$_ForecastDayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, DayModel? day, List<HourModel>? hour});

  @override
  $DayModelCopyWith<$Res>? get day;
}

/// @nodoc
class __$$_ForecastDayModelCopyWithImpl<$Res>
    extends _$ForecastDayModelCopyWithImpl<$Res, _$_ForecastDayModel>
    implements _$$_ForecastDayModelCopyWith<$Res> {
  __$$_ForecastDayModelCopyWithImpl(
      _$_ForecastDayModel _value, $Res Function(_$_ForecastDayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
    Object? hour = freezed,
  }) {
    return _then(_$_ForecastDayModel(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayModel?,
      hour: freezed == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastDayModel implements _ForecastDayModel {
  _$_ForecastDayModel({this.date, this.day, final List<HourModel>? hour})
      : _hour = hour;

  factory _$_ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastDayModelFromJson(json);

  @override
  final String? date;
  @override
  final DayModel? day;
  final List<HourModel>? _hour;
  @override
  List<HourModel>? get hour {
    final value = _hour;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ForecastDayModel(date: $date, day: $day, hour: $hour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastDayModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._hour, _hour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, day, const DeepCollectionEquality().hash(_hour));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastDayModelCopyWith<_$_ForecastDayModel> get copyWith =>
      __$$_ForecastDayModelCopyWithImpl<_$_ForecastDayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastDayModelToJson(
      this,
    );
  }
}

abstract class _ForecastDayModel implements ForecastDayModel {
  factory _ForecastDayModel(
      {final String? date,
      final DayModel? day,
      final List<HourModel>? hour}) = _$_ForecastDayModel;

  factory _ForecastDayModel.fromJson(Map<String, dynamic> json) =
      _$_ForecastDayModel.fromJson;

  @override
  String? get date;
  @override
  DayModel? get day;
  @override
  List<HourModel>? get hour;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastDayModelCopyWith<_$_ForecastDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
