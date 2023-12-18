// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_lat_long_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseLatLongModel _$FirebaseLatLongModelFromJson(Map<String, dynamic> json) {
  return _FirebaseLatLongModel.fromJson(json);
}

/// @nodoc
mixin _$FirebaseLatLongModel {
  @JsonKey(name: "last_long")
  double? get lastLong => throw _privateConstructorUsedError;
  @JsonKey(name: "last_lat")
  double? get lastLat => throw _privateConstructorUsedError;
  @JsonKey(name: "tracer_token")
  String? get tracerToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseLatLongModelCopyWith<FirebaseLatLongModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLatLongModelCopyWith<$Res> {
  factory $FirebaseLatLongModelCopyWith(FirebaseLatLongModel value,
          $Res Function(FirebaseLatLongModel) then) =
      _$FirebaseLatLongModelCopyWithImpl<$Res, FirebaseLatLongModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "last_long") double? lastLong,
      @JsonKey(name: "last_lat") double? lastLat,
      @JsonKey(name: "tracer_token") String? tracerToken});
}

/// @nodoc
class _$FirebaseLatLongModelCopyWithImpl<$Res,
        $Val extends FirebaseLatLongModel>
    implements $FirebaseLatLongModelCopyWith<$Res> {
  _$FirebaseLatLongModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastLong = freezed,
    Object? lastLat = freezed,
    Object? tracerToken = freezed,
  }) {
    return _then(_value.copyWith(
      lastLong: freezed == lastLong
          ? _value.lastLong
          : lastLong // ignore: cast_nullable_to_non_nullable
              as double?,
      lastLat: freezed == lastLat
          ? _value.lastLat
          : lastLat // ignore: cast_nullable_to_non_nullable
              as double?,
      tracerToken: freezed == tracerToken
          ? _value.tracerToken
          : tracerToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseLatLongModelImplCopyWith<$Res>
    implements $FirebaseLatLongModelCopyWith<$Res> {
  factory _$$FirebaseLatLongModelImplCopyWith(_$FirebaseLatLongModelImpl value,
          $Res Function(_$FirebaseLatLongModelImpl) then) =
      __$$FirebaseLatLongModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "last_long") double? lastLong,
      @JsonKey(name: "last_lat") double? lastLat,
      @JsonKey(name: "tracer_token") String? tracerToken});
}

/// @nodoc
class __$$FirebaseLatLongModelImplCopyWithImpl<$Res>
    extends _$FirebaseLatLongModelCopyWithImpl<$Res, _$FirebaseLatLongModelImpl>
    implements _$$FirebaseLatLongModelImplCopyWith<$Res> {
  __$$FirebaseLatLongModelImplCopyWithImpl(_$FirebaseLatLongModelImpl _value,
      $Res Function(_$FirebaseLatLongModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastLong = freezed,
    Object? lastLat = freezed,
    Object? tracerToken = freezed,
  }) {
    return _then(_$FirebaseLatLongModelImpl(
      lastLong: freezed == lastLong
          ? _value.lastLong
          : lastLong // ignore: cast_nullable_to_non_nullable
              as double?,
      lastLat: freezed == lastLat
          ? _value.lastLat
          : lastLat // ignore: cast_nullable_to_non_nullable
              as double?,
      tracerToken: freezed == tracerToken
          ? _value.tracerToken
          : tracerToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseLatLongModelImpl implements _FirebaseLatLongModel {
  const _$FirebaseLatLongModelImpl(
      {@JsonKey(name: "last_long") this.lastLong,
      @JsonKey(name: "last_lat") this.lastLat,
      @JsonKey(name: "tracer_token") this.tracerToken});

  factory _$FirebaseLatLongModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseLatLongModelImplFromJson(json);

  @override
  @JsonKey(name: "last_long")
  final double? lastLong;
  @override
  @JsonKey(name: "last_lat")
  final double? lastLat;
  @override
  @JsonKey(name: "tracer_token")
  final String? tracerToken;

  @override
  String toString() {
    return 'FirebaseLatLongModel(lastLong: $lastLong, lastLat: $lastLat, tracerToken: $tracerToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseLatLongModelImpl &&
            (identical(other.lastLong, lastLong) ||
                other.lastLong == lastLong) &&
            (identical(other.lastLat, lastLat) || other.lastLat == lastLat) &&
            (identical(other.tracerToken, tracerToken) ||
                other.tracerToken == tracerToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastLong, lastLat, tracerToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseLatLongModelImplCopyWith<_$FirebaseLatLongModelImpl>
      get copyWith =>
          __$$FirebaseLatLongModelImplCopyWithImpl<_$FirebaseLatLongModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseLatLongModelImplToJson(
      this,
    );
  }
}

abstract class _FirebaseLatLongModel implements FirebaseLatLongModel {
  const factory _FirebaseLatLongModel(
          {@JsonKey(name: "last_long") final double? lastLong,
          @JsonKey(name: "last_lat") final double? lastLat,
          @JsonKey(name: "tracer_token") final String? tracerToken}) =
      _$FirebaseLatLongModelImpl;

  factory _FirebaseLatLongModel.fromJson(Map<String, dynamic> json) =
      _$FirebaseLatLongModelImpl.fromJson;

  @override
  @JsonKey(name: "last_long")
  double? get lastLong;
  @override
  @JsonKey(name: "last_lat")
  double? get lastLat;
  @override
  @JsonKey(name: "tracer_token")
  String? get tracerToken;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseLatLongModelImplCopyWith<_$FirebaseLatLongModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
