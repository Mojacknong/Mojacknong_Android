// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_page_nickename_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyPageNickenameModel _$MyPageNickenameModelFromJson(Map<String, dynamic> json) {
  return _MyPageNickenameModel.fromJson(json);
}

/// @nodoc
mixin _$MyPageNickenameModel {
  String get nickname => throw _privateConstructorUsedError;

  /// Serializes this MyPageNickenameModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyPageNickenameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyPageNickenameModelCopyWith<MyPageNickenameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageNickenameModelCopyWith<$Res> {
  factory $MyPageNickenameModelCopyWith(MyPageNickenameModel value,
          $Res Function(MyPageNickenameModel) then) =
      _$MyPageNickenameModelCopyWithImpl<$Res, MyPageNickenameModel>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class _$MyPageNickenameModelCopyWithImpl<$Res,
        $Val extends MyPageNickenameModel>
    implements $MyPageNickenameModelCopyWith<$Res> {
  _$MyPageNickenameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyPageNickenameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyPageNickenameModelImplCopyWith<$Res>
    implements $MyPageNickenameModelCopyWith<$Res> {
  factory _$$MyPageNickenameModelImplCopyWith(_$MyPageNickenameModelImpl value,
          $Res Function(_$MyPageNickenameModelImpl) then) =
      __$$MyPageNickenameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$MyPageNickenameModelImplCopyWithImpl<$Res>
    extends _$MyPageNickenameModelCopyWithImpl<$Res, _$MyPageNickenameModelImpl>
    implements _$$MyPageNickenameModelImplCopyWith<$Res> {
  __$$MyPageNickenameModelImplCopyWithImpl(_$MyPageNickenameModelImpl _value,
      $Res Function(_$MyPageNickenameModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPageNickenameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$MyPageNickenameModelImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyPageNickenameModelImpl implements _MyPageNickenameModel {
  const _$MyPageNickenameModelImpl({required this.nickname});

  factory _$MyPageNickenameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyPageNickenameModelImplFromJson(json);

  @override
  final String nickname;

  @override
  String toString() {
    return 'MyPageNickenameModel(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPageNickenameModelImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  /// Create a copy of MyPageNickenameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPageNickenameModelImplCopyWith<_$MyPageNickenameModelImpl>
      get copyWith =>
          __$$MyPageNickenameModelImplCopyWithImpl<_$MyPageNickenameModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyPageNickenameModelImplToJson(
      this,
    );
  }
}

abstract class _MyPageNickenameModel implements MyPageNickenameModel {
  const factory _MyPageNickenameModel({required final String nickname}) =
      _$MyPageNickenameModelImpl;

  factory _MyPageNickenameModel.fromJson(Map<String, dynamic> json) =
      _$MyPageNickenameModelImpl.fromJson;

  @override
  String get nickname;

  /// Create a copy of MyPageNickenameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyPageNickenameModelImplCopyWith<_$MyPageNickenameModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
