// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farmclub_possible_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FarmclubPossibleModel _$FarmclubPossibleModelFromJson(
    Map<String, dynamic> json) {
  return _FarmclubPossibleModel.fromJson(json);
}

/// @nodoc
mixin _$FarmclubPossibleModel {
  int get reason => throw _privateConstructorUsedError;

  /// Serializes this FarmclubPossibleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FarmclubPossibleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FarmclubPossibleModelCopyWith<FarmclubPossibleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmclubPossibleModelCopyWith<$Res> {
  factory $FarmclubPossibleModelCopyWith(FarmclubPossibleModel value,
          $Res Function(FarmclubPossibleModel) then) =
      _$FarmclubPossibleModelCopyWithImpl<$Res, FarmclubPossibleModel>;
  @useResult
  $Res call({int reason});
}

/// @nodoc
class _$FarmclubPossibleModelCopyWithImpl<$Res,
        $Val extends FarmclubPossibleModel>
    implements $FarmclubPossibleModelCopyWith<$Res> {
  _$FarmclubPossibleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmclubPossibleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmclubPossibleModelImplCopyWith<$Res>
    implements $FarmclubPossibleModelCopyWith<$Res> {
  factory _$$FarmclubPossibleModelImplCopyWith(
          _$FarmclubPossibleModelImpl value,
          $Res Function(_$FarmclubPossibleModelImpl) then) =
      __$$FarmclubPossibleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int reason});
}

/// @nodoc
class __$$FarmclubPossibleModelImplCopyWithImpl<$Res>
    extends _$FarmclubPossibleModelCopyWithImpl<$Res,
        _$FarmclubPossibleModelImpl>
    implements _$$FarmclubPossibleModelImplCopyWith<$Res> {
  __$$FarmclubPossibleModelImplCopyWithImpl(_$FarmclubPossibleModelImpl _value,
      $Res Function(_$FarmclubPossibleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmclubPossibleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$FarmclubPossibleModelImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmclubPossibleModelImpl implements _FarmclubPossibleModel {
  const _$FarmclubPossibleModelImpl({required this.reason});

  factory _$FarmclubPossibleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmclubPossibleModelImplFromJson(json);

  @override
  final int reason;

  @override
  String toString() {
    return 'FarmclubPossibleModel(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmclubPossibleModelImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of FarmclubPossibleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmclubPossibleModelImplCopyWith<_$FarmclubPossibleModelImpl>
      get copyWith => __$$FarmclubPossibleModelImplCopyWithImpl<
          _$FarmclubPossibleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmclubPossibleModelImplToJson(
      this,
    );
  }
}

abstract class _FarmclubPossibleModel implements FarmclubPossibleModel {
  const factory _FarmclubPossibleModel({required final int reason}) =
      _$FarmclubPossibleModelImpl;

  factory _FarmclubPossibleModel.fromJson(Map<String, dynamic> json) =
      _$FarmclubPossibleModelImpl.fromJson;

  @override
  int get reason;

  /// Create a copy of FarmclubPossibleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmclubPossibleModelImplCopyWith<_$FarmclubPossibleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
