// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farmclub_sign_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FarmclubSignupModel _$FarmclubSignupModelFromJson(Map<String, dynamic> json) {
  return _FarmclubSignupModel.fromJson(json);
}

/// @nodoc
mixin _$FarmclubSignupModel {
  int get myVeggieId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  /// Serializes this FarmclubSignupModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FarmclubSignupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FarmclubSignupModelCopyWith<FarmclubSignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmclubSignupModelCopyWith<$Res> {
  factory $FarmclubSignupModelCopyWith(
          FarmclubSignupModel value, $Res Function(FarmclubSignupModel) then) =
      _$FarmclubSignupModelCopyWithImpl<$Res, FarmclubSignupModel>;
  @useResult
  $Res call({int myVeggieId, String nickname});
}

/// @nodoc
class _$FarmclubSignupModelCopyWithImpl<$Res, $Val extends FarmclubSignupModel>
    implements $FarmclubSignupModelCopyWith<$Res> {
  _$FarmclubSignupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmclubSignupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myVeggieId = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      myVeggieId: null == myVeggieId
          ? _value.myVeggieId
          : myVeggieId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmclubSignupModelImplCopyWith<$Res>
    implements $FarmclubSignupModelCopyWith<$Res> {
  factory _$$FarmclubSignupModelImplCopyWith(_$FarmclubSignupModelImpl value,
          $Res Function(_$FarmclubSignupModelImpl) then) =
      __$$FarmclubSignupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int myVeggieId, String nickname});
}

/// @nodoc
class __$$FarmclubSignupModelImplCopyWithImpl<$Res>
    extends _$FarmclubSignupModelCopyWithImpl<$Res, _$FarmclubSignupModelImpl>
    implements _$$FarmclubSignupModelImplCopyWith<$Res> {
  __$$FarmclubSignupModelImplCopyWithImpl(_$FarmclubSignupModelImpl _value,
      $Res Function(_$FarmclubSignupModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmclubSignupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myVeggieId = null,
    Object? nickname = null,
  }) {
    return _then(_$FarmclubSignupModelImpl(
      myVeggieId: null == myVeggieId
          ? _value.myVeggieId
          : myVeggieId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmclubSignupModelImpl implements _FarmclubSignupModel {
  _$FarmclubSignupModelImpl({required this.myVeggieId, required this.nickname});

  factory _$FarmclubSignupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmclubSignupModelImplFromJson(json);

  @override
  final int myVeggieId;
  @override
  final String nickname;

  @override
  String toString() {
    return 'FarmclubSignupModel(myVeggieId: $myVeggieId, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmclubSignupModelImpl &&
            (identical(other.myVeggieId, myVeggieId) ||
                other.myVeggieId == myVeggieId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, myVeggieId, nickname);

  /// Create a copy of FarmclubSignupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmclubSignupModelImplCopyWith<_$FarmclubSignupModelImpl> get copyWith =>
      __$$FarmclubSignupModelImplCopyWithImpl<_$FarmclubSignupModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmclubSignupModelImplToJson(
      this,
    );
  }
}

abstract class _FarmclubSignupModel implements FarmclubSignupModel {
  factory _FarmclubSignupModel(
      {required final int myVeggieId,
      required final String nickname}) = _$FarmclubSignupModelImpl;

  factory _FarmclubSignupModel.fromJson(Map<String, dynamic> json) =
      _$FarmclubSignupModelImpl.fromJson;

  @override
  int get myVeggieId;
  @override
  String get nickname;

  /// Create a copy of FarmclubSignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmclubSignupModelImplCopyWith<_$FarmclubSignupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
