import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'firebase_lat_long_model.freezed.dart';
part 'firebase_lat_long_model.g.dart';

FirebaseLatLongModel firebaseLatLongModelFromJson(String str) =>
    FirebaseLatLongModel.fromJson(json.decode(str));

String firebaseLatLongModelToJson(FirebaseLatLongModel data) =>
    json.encode(data.toJson());

@freezed
class FirebaseLatLongModel with _$FirebaseLatLongModel {
  const factory FirebaseLatLongModel({
    @JsonKey(name: "last_long") double? lastLong,
    @JsonKey(name: "last_lat") double? lastLat,
    @JsonKey(name: "tracer_token") String? tracerToken,
  }) = _FirebaseLatLongModel;

  factory FirebaseLatLongModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseLatLongModelFromJson(json);
}
