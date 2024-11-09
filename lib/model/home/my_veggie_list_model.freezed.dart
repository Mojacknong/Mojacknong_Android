// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_veggie_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyVeggieListModel _$MyVeggieListModelFromJson(Map<String, dynamic> json) {
  return _MyVeggieListModel.fromJson(json);
}

/// @nodoc
mixin _$MyVeggieListModel {
  int get myVeggieId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  int get farmClubId => throw _privateConstructorUsedError;

  /// Serializes this MyVeggieListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyVeggieListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyVeggieListModelCopyWith<MyVeggieListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVeggieListModelCopyWith<$Res> {
  factory $MyVeggieListModelCopyWith(
          MyVeggieListModel value, $Res Function(MyVeggieListModel) then) =
      _$MyVeggieListModelCopyWithImpl<$Res, MyVeggieListModel>;
  @useResult
  $Res call({int myVeggieId, String nickname, int farmClubId});
}

/// @nodoc
class _$MyVeggieListModelCopyWithImpl<$Res, $Val extends MyVeggieListModel>
    implements $MyVeggieListModelCopyWith<$Res> {
  _$MyVeggieListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyVeggieListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myVeggieId = null,
    Object? nickname = null,
    Object? farmClubId = null,
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
      farmClubId: null == farmClubId
          ? _value.farmClubId
          : farmClubId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyVeggieListModelImplCopyWith<$Res>
    implements $MyVeggieListModelCopyWith<$Res> {
  factory _$$MyVeggieListModelImplCopyWith(_$MyVeggieListModelImpl value,
          $Res Function(_$MyVeggieListModelImpl) then) =
      __$$MyVeggieListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int myVeggieId, String nickname, int farmClubId});
}

/// @nodoc
class __$$MyVeggieListModelImplCopyWithImpl<$Res>
    extends _$MyVeggieListModelCopyWithImpl<$Res, _$MyVeggieListModelImpl>
    implements _$$MyVeggieListModelImplCopyWith<$Res> {
  __$$MyVeggieListModelImplCopyWithImpl(_$MyVeggieListModelImpl _value,
      $Res Function(_$MyVeggieListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyVeggieListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myVeggieId = null,
    Object? nickname = null,
    Object? farmClubId = null,
  }) {
    return _then(_$MyVeggieListModelImpl(
      myVeggieId: null == myVeggieId
          ? _value.myVeggieId
          : myVeggieId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      farmClubId: null == farmClubId
          ? _value.farmClubId
          : farmClubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyVeggieListModelImpl implements _MyVeggieListModel {
  const _$MyVeggieListModelImpl(
      {required this.myVeggieId,
      required this.nickname,
      required this.farmClubId});

  factory _$MyVeggieListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyVeggieListModelImplFromJson(json);

  @override
  final int myVeggieId;
  @override
  final String nickname;
  @override
  final int farmClubId;

  @override
  String toString() {
    return 'MyVeggieListModel(myVeggieId: $myVeggieId, nickname: $nickname, farmClubId: $farmClubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyVeggieListModelImpl &&
            (identical(other.myVeggieId, myVeggieId) ||
                other.myVeggieId == myVeggieId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.farmClubId, farmClubId) ||
                other.farmClubId == farmClubId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, myVeggieId, nickname, farmClubId);

  /// Create a copy of MyVeggieListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyVeggieListModelImplCopyWith<_$MyVeggieListModelImpl> get copyWith =>
      __$$MyVeggieListModelImplCopyWithImpl<_$MyVeggieListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyVeggieListModelImplToJson(
      this,
    );
  }
}

abstract class _MyVeggieListModel implements MyVeggieListModel {
  const factory _MyVeggieListModel(
      {required final int myVeggieId,
      required final String nickname,
      required final int farmClubId}) = _$MyVeggieListModelImpl;

  factory _MyVeggieListModel.fromJson(Map<String, dynamic> json) =
      _$MyVeggieListModelImpl.fromJson;

  @override
  int get myVeggieId;
  @override
  String get nickname;
  @override
  int get farmClubId;

  /// Create a copy of MyVeggieListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyVeggieListModelImplCopyWith<_$MyVeggieListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
