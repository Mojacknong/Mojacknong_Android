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

DiaryDataModel _$DiaryDataModelFromJson(Map<String, dynamic> json) {
  return _DiaryDataModel.fromJson(json);
}

/// @nodoc
mixin _$DiaryDataModel {
  List<DiaryCommentModel> get diaryCommentContent =>
      throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryDataModelCopyWith<DiaryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryDataModelCopyWith<$Res> {
  factory $DiaryDataModelCopyWith(
          DiaryDataModel value, $Res Function(DiaryDataModel) then) =
      _$DiaryDataModelCopyWithImpl<$Res, DiaryDataModel>;
  @useResult
  $Res call(
      {List<DiaryCommentModel> diaryCommentContent,
      int likeCount,
      int commentCount});
}

/// @nodoc
class _$DiaryDataModelCopyWithImpl<$Res, $Val extends DiaryDataModel>
    implements $DiaryDataModelCopyWith<$Res> {
  _$DiaryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryCommentContent = null,
    Object? likeCount = null,
    Object? commentCount = null,
  }) {
    return _then(_value.copyWith(
      diaryCommentContent: null == diaryCommentContent
          ? _value.diaryCommentContent
          : diaryCommentContent // ignore: cast_nullable_to_non_nullable
              as List<DiaryCommentModel>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiaryDataModelImplCopyWith<$Res>
    implements $DiaryDataModelCopyWith<$Res> {
  factory _$$DiaryDataModelImplCopyWith(_$DiaryDataModelImpl value,
          $Res Function(_$DiaryDataModelImpl) then) =
      __$$DiaryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DiaryCommentModel> diaryCommentContent,
      int likeCount,
      int commentCount});
}

/// @nodoc
class __$$DiaryDataModelImplCopyWithImpl<$Res>
    extends _$DiaryDataModelCopyWithImpl<$Res, _$DiaryDataModelImpl>
    implements _$$DiaryDataModelImplCopyWith<$Res> {
  __$$DiaryDataModelImplCopyWithImpl(
      _$DiaryDataModelImpl _value, $Res Function(_$DiaryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryCommentContent = null,
    Object? likeCount = null,
    Object? commentCount = null,
  }) {
    return _then(_$DiaryDataModelImpl(
      diaryCommentContent: null == diaryCommentContent
          ? _value._diaryCommentContent
          : diaryCommentContent // ignore: cast_nullable_to_non_nullable
              as List<DiaryCommentModel>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiaryDataModelImpl implements _DiaryDataModel {
  const _$DiaryDataModelImpl(
      {required final List<DiaryCommentModel> diaryCommentContent,
      required this.likeCount,
      required this.commentCount})
      : _diaryCommentContent = diaryCommentContent;

  factory _$DiaryDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiaryDataModelImplFromJson(json);

  final List<DiaryCommentModel> _diaryCommentContent;
  @override
  List<DiaryCommentModel> get diaryCommentContent {
    if (_diaryCommentContent is EqualUnmodifiableListView)
      return _diaryCommentContent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diaryCommentContent);
  }

  @override
  final int likeCount;
  @override
  final int commentCount;

  @override
  String toString() {
    return 'DiaryDataModel(diaryCommentContent: $diaryCommentContent, likeCount: $likeCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._diaryCommentContent, _diaryCommentContent) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_diaryCommentContent),
      likeCount,
      commentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryDataModelImplCopyWith<_$DiaryDataModelImpl> get copyWith =>
      __$$DiaryDataModelImplCopyWithImpl<_$DiaryDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiaryDataModelImplToJson(
      this,
    );
  }
}

abstract class _DiaryDataModel implements DiaryDataModel {
  const factory _DiaryDataModel(
      {required final List<DiaryCommentModel> diaryCommentContent,
      required final int likeCount,
      required final int commentCount}) = _$DiaryDataModelImpl;

  factory _DiaryDataModel.fromJson(Map<String, dynamic> json) =
      _$DiaryDataModelImpl.fromJson;

  @override
  List<DiaryCommentModel> get diaryCommentContent;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$DiaryDataModelImplCopyWith<_$DiaryDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  int get commentId => throw _privateConstructorUsedError;

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
      String? profileImage,
      int commentId});
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
    Object? commentId = null,
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
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
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
      String? profileImage,
      int commentId});
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
    Object? commentId = null,
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
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
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
      required this.profileImage,
      required this.commentId});

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
  final int commentId;

  @override
  String toString() {
    return 'DiaryCommentModel(myComment: $myComment, content: $content, date: $date, nickname: $nickname, profileImage: $profileImage, commentId: $commentId)';
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
                other.profileImage == profileImage) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, myComment, content, date, nickname, profileImage, commentId);

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
      required final String? profileImage,
      required final int commentId}) = _$DiaryCommentModelImpl;

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
  int get commentId;
  @override
  @JsonKey(ignore: true)
  _$$DiaryCommentModelImplCopyWith<_$DiaryCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
