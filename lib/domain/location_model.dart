import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'localtime_epoch') int? localtimeEpoch,
    String? localtime,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
