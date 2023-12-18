// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_lat_long_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseLatLongModelImpl _$$FirebaseLatLongModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseLatLongModelImpl(
      lastLong: (json['last_long'] as num?)?.toDouble(),
      lastLat: (json['last_lat'] as num?)?.toDouble(),
      tracerToken: json['tracer_token'] as String?,
    );

Map<String, dynamic> _$$FirebaseLatLongModelImplToJson(
        _$FirebaseLatLongModelImpl instance) =>
    <String, dynamic>{
      'last_long': instance.lastLong,
      'last_lat': instance.lastLat,
      'tracer_token': instance.tracerToken,
    };
