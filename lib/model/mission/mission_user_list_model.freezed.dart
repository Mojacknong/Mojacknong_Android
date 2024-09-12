// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission_user_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MissionUserListModel _$MissionUserListModelFromJson(Map<String, dynamic> json) {
  return _MissionUserListModel.fromJson(json);
}

/// @nodoc
mixin _$MissionUserListModel {
  int get userId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionUserListModelCopyWith<MissionUserListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionUserListModelCopyWith<$Res> {
  factory $MissionUserListModelCopyWith(MissionUserListModel value,
          $Res Function(MissionUserListModel) then) =
      _$MissionUserListModelCopyWithImpl<$Res, MissionUserListModel>;
  @useResult
  $Res call({int userId, String nickname, String profileImage});
}

/// @nodoc
class _$MissionUserListModelCopyWithImpl<$Res,
        $Val extends MissionUserListModel>
    implements $MissionUserListModelCopyWith<$Res> {
  _$MissionUserListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? nickname = null,
    Object? profileImage = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissionUserListModelImplCopyWith<$Res>
    implements $MissionUserListModelCopyWith<$Res> {
  factory _$$MissionUserListModelImplCopyWith(_$MissionUserListModelImpl value,
          $Res Function(_$MissionUserListModelImpl) then) =
      __$$MissionUserListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String nickname, String profileImage});
}

/// @nodoc
class __$$MissionUserListModelImplCopyWithImpl<$Res>
    extends _$MissionUserListModelCopyWithImpl<$Res, _$MissionUserListModelImpl>
    implements _$$MissionUserListModelImplCopyWith<$Res> {
  __$$MissionUserListModelImplCopyWithImpl(_$MissionUserListModelImpl _value,
      $Res Function(_$MissionUserListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? nickname = null,
    Object? profileImage = null,
  }) {
    return _then(_$MissionUserListModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionUserListModelImpl implements _MissionUserListModel {
  const _$MissionUserListModelImpl(
      {required this.userId,
      required this.nickname,
      required this.profileImage});

  factory _$MissionUserListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionUserListModelImplFromJson(json);

  @override
  final int userId;
  @override
  final String nickname;
  @override
  final String profileImage;

  @override
  String toString() {
    return 'MissionUserListModel(userId: $userId, nickname: $nickname, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionUserListModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, nickname, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionUserListModelImplCopyWith<_$MissionUserListModelImpl>
      get copyWith =>
          __$$MissionUserListModelImplCopyWithImpl<_$MissionUserListModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionUserListModelImplToJson(
      this,
    );
  }
}

abstract class _MissionUserListModel implements MissionUserListModel {
  const factory _MissionUserListModel(
      {required final int userId,
      required final String nickname,
      required final String profileImage}) = _$MissionUserListModelImpl;

  factory _MissionUserListModel.fromJson(Map<String, dynamic> json) =
      _$MissionUserListModelImpl.fromJson;

  @override
  int get userId;
  @override
  String get nickname;
  @override
  String get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$MissionUserListModelImplCopyWith<_$MissionUserListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
