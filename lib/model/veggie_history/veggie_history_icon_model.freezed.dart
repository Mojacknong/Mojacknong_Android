// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'veggie_history_icon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VeggieHistoryIconModel _$VeggieHistoryIconModelFromJson(
    Map<String, dynamic> json) {
  return _VeggieHistoryIconModel.fromJson(json);
}

/// @nodoc
mixin _$VeggieHistoryIconModel {
  String? get url => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;

  /// Serializes this VeggieHistoryIconModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VeggieHistoryIconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VeggieHistoryIconModelCopyWith<VeggieHistoryIconModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VeggieHistoryIconModelCopyWith<$Res> {
  factory $VeggieHistoryIconModelCopyWith(VeggieHistoryIconModel value,
          $Res Function(VeggieHistoryIconModel) then) =
      _$VeggieHistoryIconModelCopyWithImpl<$Res, VeggieHistoryIconModel>;
  @useResult
  $Res call({String? url, String? backgroundColor});
}

/// @nodoc
class _$VeggieHistoryIconModelCopyWithImpl<$Res,
        $Val extends VeggieHistoryIconModel>
    implements $VeggieHistoryIconModelCopyWith<$Res> {
  _$VeggieHistoryIconModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VeggieHistoryIconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VeggieHistoryIconModelImplCopyWith<$Res>
    implements $VeggieHistoryIconModelCopyWith<$Res> {
  factory _$$VeggieHistoryIconModelImplCopyWith(
          _$VeggieHistoryIconModelImpl value,
          $Res Function(_$VeggieHistoryIconModelImpl) then) =
      __$$VeggieHistoryIconModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? backgroundColor});
}

/// @nodoc
class __$$VeggieHistoryIconModelImplCopyWithImpl<$Res>
    extends _$VeggieHistoryIconModelCopyWithImpl<$Res,
        _$VeggieHistoryIconModelImpl>
    implements _$$VeggieHistoryIconModelImplCopyWith<$Res> {
  __$$VeggieHistoryIconModelImplCopyWithImpl(
      _$VeggieHistoryIconModelImpl _value,
      $Res Function(_$VeggieHistoryIconModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VeggieHistoryIconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_$VeggieHistoryIconModelImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VeggieHistoryIconModelImpl implements _VeggieHistoryIconModel {
  const _$VeggieHistoryIconModelImpl(
      {required this.url, required this.backgroundColor});

  factory _$VeggieHistoryIconModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VeggieHistoryIconModelImplFromJson(json);

  @override
  final String? url;
  @override
  final String? backgroundColor;

  @override
  String toString() {
    return 'VeggieHistoryIconModel(url: $url, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VeggieHistoryIconModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, backgroundColor);

  /// Create a copy of VeggieHistoryIconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VeggieHistoryIconModelImplCopyWith<_$VeggieHistoryIconModelImpl>
      get copyWith => __$$VeggieHistoryIconModelImplCopyWithImpl<
          _$VeggieHistoryIconModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VeggieHistoryIconModelImplToJson(
      this,
    );
  }
}

abstract class _VeggieHistoryIconModel implements VeggieHistoryIconModel {
  const factory _VeggieHistoryIconModel(
      {required final String? url,
      required final String? backgroundColor}) = _$VeggieHistoryIconModelImpl;

  factory _VeggieHistoryIconModel.fromJson(Map<String, dynamic> json) =
      _$VeggieHistoryIconModelImpl.fromJson;

  @override
  String? get url;
  @override
  String? get backgroundColor;

  /// Create a copy of VeggieHistoryIconModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VeggieHistoryIconModelImplCopyWith<_$VeggieHistoryIconModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
