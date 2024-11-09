// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farmclub_my_vege_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FarmclubMyVegeModel _$FarmclubMyVegeModelFromJson(Map<String, dynamic> json) {
  return _FarmclubMyVegeModel.fromJson(json);
}

/// @nodoc
mixin _$FarmclubMyVegeModel {
  int get myVeggieId => throw _privateConstructorUsedError;
  String get veggieInfoId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  /// Serializes this FarmclubMyVegeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FarmclubMyVegeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FarmclubMyVegeModelCopyWith<FarmclubMyVegeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmclubMyVegeModelCopyWith<$Res> {
  factory $FarmclubMyVegeModelCopyWith(
          FarmclubMyVegeModel value, $Res Function(FarmclubMyVegeModel) then) =
      _$FarmclubMyVegeModelCopyWithImpl<$Res, FarmclubMyVegeModel>;
  @useResult
  $Res call({int myVeggieId, String veggieInfoId, String nickname});
}

/// @nodoc
class _$FarmclubMyVegeModelCopyWithImpl<$Res, $Val extends FarmclubMyVegeModel>
    implements $FarmclubMyVegeModelCopyWith<$Res> {
  _$FarmclubMyVegeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmclubMyVegeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myVeggieId = null,
    Object? veggieInfoId = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      myVeggieId: null == myVeggieId
          ? _value.myVeggieId
          : myVeggieId // ignore: cast_nullable_to_non_nullable
              as int,
      veggieInfoId: null == veggieInfoId
          ? _value.veggieInfoId
          : veggieInfoId // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmclubMyVegeModelImplCopyWith<$Res>
    implements $FarmclubMyVegeModelCopyWith<$Res> {
  factory _$$FarmclubMyVegeModelImplCopyWith(_$FarmclubMyVegeModelImpl value,
          $Res Function(_$FarmclubMyVegeModelImpl) then) =
      __$$FarmclubMyVegeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int myVeggieId, String veggieInfoId, String nickname});
}

/// @nodoc
class __$$FarmclubMyVegeModelImplCopyWithImpl<$Res>
    extends _$FarmclubMyVegeModelCopyWithImpl<$Res, _$FarmclubMyVegeModelImpl>
    implements _$$FarmclubMyVegeModelImplCopyWith<$Res> {
  __$$FarmclubMyVegeModelImplCopyWithImpl(_$FarmclubMyVegeModelImpl _value,
      $Res Function(_$FarmclubMyVegeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmclubMyVegeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myVeggieId = null,
    Object? veggieInfoId = null,
    Object? nickname = null,
  }) {
    return _then(_$FarmclubMyVegeModelImpl(
      myVeggieId: null == myVeggieId
          ? _value.myVeggieId
          : myVeggieId // ignore: cast_nullable_to_non_nullable
              as int,
      veggieInfoId: null == veggieInfoId
          ? _value.veggieInfoId
          : veggieInfoId // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmclubMyVegeModelImpl implements _FarmclubMyVegeModel {
  const _$FarmclubMyVegeModelImpl(
      {required this.myVeggieId,
      required this.veggieInfoId,
      required this.nickname});

  factory _$FarmclubMyVegeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmclubMyVegeModelImplFromJson(json);

  @override
  final int myVeggieId;
  @override
  final String veggieInfoId;
  @override
  final String nickname;

  @override
  String toString() {
    return 'FarmclubMyVegeModel(myVeggieId: $myVeggieId, veggieInfoId: $veggieInfoId, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmclubMyVegeModelImpl &&
            (identical(other.myVeggieId, myVeggieId) ||
                other.myVeggieId == myVeggieId) &&
            (identical(other.veggieInfoId, veggieInfoId) ||
                other.veggieInfoId == veggieInfoId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, myVeggieId, veggieInfoId, nickname);

  /// Create a copy of FarmclubMyVegeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmclubMyVegeModelImplCopyWith<_$FarmclubMyVegeModelImpl> get copyWith =>
      __$$FarmclubMyVegeModelImplCopyWithImpl<_$FarmclubMyVegeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmclubMyVegeModelImplToJson(
      this,
    );
  }
}

abstract class _FarmclubMyVegeModel implements FarmclubMyVegeModel {
  const factory _FarmclubMyVegeModel(
      {required final int myVeggieId,
      required final String veggieInfoId,
      required final String nickname}) = _$FarmclubMyVegeModelImpl;

  factory _FarmclubMyVegeModel.fromJson(Map<String, dynamic> json) =
      _$FarmclubMyVegeModelImpl.fromJson;

  @override
  int get myVeggieId;
  @override
  String get veggieInfoId;
  @override
  String get nickname;

  /// Create a copy of FarmclubMyVegeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmclubMyVegeModelImplCopyWith<_$FarmclubMyVegeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
