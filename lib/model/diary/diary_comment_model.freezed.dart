// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiaryCommentModel _$DiaryCommentModelFromJson(Map<String, dynamic> json) {
  return _DiaryCommentModel.fromJson(json);
}

/// @nodoc
mixin _$DiaryCommentModel {
  bool get myComment => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryCommentModelCopyWith<DiaryCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCommentModelCopyWith<$Res> {
  factory $DiaryCommentModelCopyWith(
          DiaryCommentModel value, $Res Function(DiaryCommentModel) then) =
      _$DiaryCommentModelCopyWithImpl<$Res, DiaryCommentModel>;
  @useResult
  $Res call(
      {bool myComment,
      String content,
      String date,
      String nickname,
      String? profileImage});
}

/// @nodoc
class _$DiaryCommentModelCopyWithImpl<$Res, $Val extends DiaryCommentModel>
    implements $DiaryCommentModelCopyWith<$Res> {
  _$DiaryCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myComment = null,
    Object? content = null,
    Object? date = null,
    Object? nickname = null,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      myComment: null == myComment
          ? _value.myComment
          : myComment // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiaryCommentModelImplCopyWith<$Res>
    implements $DiaryCommentModelCopyWith<$Res> {
  factory _$$DiaryCommentModelImplCopyWith(_$DiaryCommentModelImpl value,
          $Res Function(_$DiaryCommentModelImpl) then) =
      __$$DiaryCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool myComment,
      String content,
      String date,
      String nickname,
      String? profileImage});
}

/// @nodoc
class __$$DiaryCommentModelImplCopyWithImpl<$Res>
    extends _$DiaryCommentModelCopyWithImpl<$Res, _$DiaryCommentModelImpl>
    implements _$$DiaryCommentModelImplCopyWith<$Res> {
  __$$DiaryCommentModelImplCopyWithImpl(_$DiaryCommentModelImpl _value,
      $Res Function(_$DiaryCommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myComment = null,
    Object? content = null,
    Object? date = null,
    Object? nickname = null,
    Object? profileImage = freezed,
  }) {
    return _then(_$DiaryCommentModelImpl(
      myComment: null == myComment
          ? _value.myComment
          : myComment // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiaryCommentModelImpl implements _DiaryCommentModel {
  const _$DiaryCommentModelImpl(
      {required this.myComment,
      required this.content,
      required this.date,
      required this.nickname,
      required this.profileImage});

  factory _$DiaryCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiaryCommentModelImplFromJson(json);

  @override
  final bool myComment;
  @override
  final String content;
  @override
  final String date;
  @override
  final String nickname;
  @override
  final String? profileImage;

  @override
  String toString() {
    return 'DiaryCommentModel(myComment: $myComment, content: $content, date: $date, nickname: $nickname, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryCommentModelImpl &&
            (identical(other.myComment, myComment) ||
                other.myComment == myComment) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, myComment, content, date, nickname, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryCommentModelImplCopyWith<_$DiaryCommentModelImpl> get copyWith =>
      __$$DiaryCommentModelImplCopyWithImpl<_$DiaryCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiaryCommentModelImplToJson(
      this,
    );
  }
}

abstract class _DiaryCommentModel implements DiaryCommentModel {
  const factory _DiaryCommentModel(
      {required final bool myComment,
      required final String content,
      required final String date,
      required final String nickname,
      required final String? profileImage}) = _$DiaryCommentModelImpl;

  factory _DiaryCommentModel.fromJson(Map<String, dynamic> json) =
      _$DiaryCommentModelImpl.fromJson;

  @override
  bool get myComment;
  @override
  String get content;
  @override
  String get date;
  @override
  String get nickname;
  @override
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$DiaryCommentModelImplCopyWith<_$DiaryCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
