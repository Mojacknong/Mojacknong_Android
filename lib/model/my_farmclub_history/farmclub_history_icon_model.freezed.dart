// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farmclub_history_icon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FarmclubHistoryIconModel _$FarmclubHistoryIconModelFromJson(
    Map<String, dynamic> json) {
  return _FarmclubHistoryIconModel.fromJson(json);
}

/// @nodoc
mixin _$FarmclubHistoryIconModel {
  String? get url => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;

  /// Serializes this FarmclubHistoryIconModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FarmclubHistoryIconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FarmclubHistoryIconModelCopyWith<FarmclubHistoryIconModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmclubHistoryIconModelCopyWith<$Res> {
  factory $FarmclubHistoryIconModelCopyWith(FarmclubHistoryIconModel value,
          $Res Function(FarmclubHistoryIconModel) then) =
      _$FarmclubHistoryIconModelCopyWithImpl<$Res, FarmclubHistoryIconModel>;
  @useResult
  $Res call({String? url, String? backgroundColor});
}

/// @nodoc
class _$FarmclubHistoryIconModelCopyWithImpl<$Res,
        $Val extends FarmclubHistoryIconModel>
    implements $FarmclubHistoryIconModelCopyWith<$Res> {
  _$FarmclubHistoryIconModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmclubHistoryIconModel
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
abstract class _$$FarmclubHistoryIconModelImplCopyWith<$Res>
    implements $FarmclubHistoryIconModelCopyWith<$Res> {
  factory _$$FarmclubHistoryIconModelImplCopyWith(
          _$FarmclubHistoryIconModelImpl value,
          $Res Function(_$FarmclubHistoryIconModelImpl) then) =
      __$$FarmclubHistoryIconModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? backgroundColor});
}

/// @nodoc
class __$$FarmclubHistoryIconModelImplCopyWithImpl<$Res>
    extends _$FarmclubHistoryIconModelCopyWithImpl<$Res,
        _$FarmclubHistoryIconModelImpl>
    implements _$$FarmclubHistoryIconModelImplCopyWith<$Res> {
  __$$FarmclubHistoryIconModelImplCopyWithImpl(
      _$FarmclubHistoryIconModelImpl _value,
      $Res Function(_$FarmclubHistoryIconModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmclubHistoryIconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_$FarmclubHistoryIconModelImpl(
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
class _$FarmclubHistoryIconModelImpl implements _FarmclubHistoryIconModel {
  const _$FarmclubHistoryIconModelImpl(
      {required this.url, required this.backgroundColor});

  factory _$FarmclubHistoryIconModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmclubHistoryIconModelImplFromJson(json);

  @override
  final String? url;
  @override
  final String? backgroundColor;

  @override
  String toString() {
    return 'FarmclubHistoryIconModel(url: $url, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmclubHistoryIconModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, backgroundColor);

  /// Create a copy of FarmclubHistoryIconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmclubHistoryIconModelImplCopyWith<_$FarmclubHistoryIconModelImpl>
      get copyWith => __$$FarmclubHistoryIconModelImplCopyWithImpl<
          _$FarmclubHistoryIconModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmclubHistoryIconModelImplToJson(
      this,
    );
  }
}

abstract class _FarmclubHistoryIconModel implements FarmclubHistoryIconModel {
  const factory _FarmclubHistoryIconModel(
      {required final String? url,
      required final String? backgroundColor}) = _$FarmclubHistoryIconModelImpl;

  factory _FarmclubHistoryIconModel.fromJson(Map<String, dynamic> json) =
      _$FarmclubHistoryIconModelImpl.fromJson;

  @override
  String? get url;
  @override
  String? get backgroundColor;

  /// Create a copy of FarmclubHistoryIconModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmclubHistoryIconModelImplCopyWith<_$FarmclubHistoryIconModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
