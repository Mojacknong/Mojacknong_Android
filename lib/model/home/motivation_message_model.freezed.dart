// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motivation_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MotivationMessageModel _$MotivationMessageModelFromJson(
    Map<String, dynamic> json) {
  return _MotivationMessageModel.fromJson(json);
}

/// @nodoc
mixin _$MotivationMessageModel {
  String get encouragementMessage => throw _privateConstructorUsedError;

  /// Serializes this MotivationMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MotivationMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MotivationMessageModelCopyWith<MotivationMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotivationMessageModelCopyWith<$Res> {
  factory $MotivationMessageModelCopyWith(MotivationMessageModel value,
          $Res Function(MotivationMessageModel) then) =
      _$MotivationMessageModelCopyWithImpl<$Res, MotivationMessageModel>;
  @useResult
  $Res call({String encouragementMessage});
}

/// @nodoc
class _$MotivationMessageModelCopyWithImpl<$Res,
        $Val extends MotivationMessageModel>
    implements $MotivationMessageModelCopyWith<$Res> {
  _$MotivationMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MotivationMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encouragementMessage = null,
  }) {
    return _then(_value.copyWith(
      encouragementMessage: null == encouragementMessage
          ? _value.encouragementMessage
          : encouragementMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MotivationMessageModelImplCopyWith<$Res>
    implements $MotivationMessageModelCopyWith<$Res> {
  factory _$$MotivationMessageModelImplCopyWith(
          _$MotivationMessageModelImpl value,
          $Res Function(_$MotivationMessageModelImpl) then) =
      __$$MotivationMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String encouragementMessage});
}

/// @nodoc
class __$$MotivationMessageModelImplCopyWithImpl<$Res>
    extends _$MotivationMessageModelCopyWithImpl<$Res,
        _$MotivationMessageModelImpl>
    implements _$$MotivationMessageModelImplCopyWith<$Res> {
  __$$MotivationMessageModelImplCopyWithImpl(
      _$MotivationMessageModelImpl _value,
      $Res Function(_$MotivationMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MotivationMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encouragementMessage = null,
  }) {
    return _then(_$MotivationMessageModelImpl(
      encouragementMessage: null == encouragementMessage
          ? _value.encouragementMessage
          : encouragementMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MotivationMessageModelImpl implements _MotivationMessageModel {
  const _$MotivationMessageModelImpl({required this.encouragementMessage});

  factory _$MotivationMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotivationMessageModelImplFromJson(json);

  @override
  final String encouragementMessage;

  @override
  String toString() {
    return 'MotivationMessageModel(encouragementMessage: $encouragementMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotivationMessageModelImpl &&
            (identical(other.encouragementMessage, encouragementMessage) ||
                other.encouragementMessage == encouragementMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, encouragementMessage);

  /// Create a copy of MotivationMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MotivationMessageModelImplCopyWith<_$MotivationMessageModelImpl>
      get copyWith => __$$MotivationMessageModelImplCopyWithImpl<
          _$MotivationMessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotivationMessageModelImplToJson(
      this,
    );
  }
}

abstract class _MotivationMessageModel implements MotivationMessageModel {
  const factory _MotivationMessageModel(
          {required final String encouragementMessage}) =
      _$MotivationMessageModelImpl;

  factory _MotivationMessageModel.fromJson(Map<String, dynamic> json) =
      _$MotivationMessageModelImpl.fromJson;

  @override
  String get encouragementMessage;

  /// Create a copy of MotivationMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MotivationMessageModelImplCopyWith<_$MotivationMessageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
