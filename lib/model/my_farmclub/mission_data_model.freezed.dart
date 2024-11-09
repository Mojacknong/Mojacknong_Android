// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MissionDataModel _$MissionDataModelFromJson(Map<String, dynamic> json) {
  return _MissionDataModel.fromJson(json);
}

/// @nodoc
mixin _$MissionDataModel {
  bool get isMyPost => throw _privateConstructorUsedError;
  List<MissionCommentModel> get comments => throw _privateConstructorUsedError;

  /// Serializes this MissionDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MissionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MissionDataModelCopyWith<MissionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionDataModelCopyWith<$Res> {
  factory $MissionDataModelCopyWith(
          MissionDataModel value, $Res Function(MissionDataModel) then) =
      _$MissionDataModelCopyWithImpl<$Res, MissionDataModel>;
  @useResult
  $Res call({bool isMyPost, List<MissionCommentModel> comments});
}

/// @nodoc
class _$MissionDataModelCopyWithImpl<$Res, $Val extends MissionDataModel>
    implements $MissionDataModelCopyWith<$Res> {
  _$MissionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MissionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMyPost = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      isMyPost: null == isMyPost
          ? _value.isMyPost
          : isMyPost // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<MissionCommentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissionDataModelImplCopyWith<$Res>
    implements $MissionDataModelCopyWith<$Res> {
  factory _$$MissionDataModelImplCopyWith(_$MissionDataModelImpl value,
          $Res Function(_$MissionDataModelImpl) then) =
      __$$MissionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMyPost, List<MissionCommentModel> comments});
}

/// @nodoc
class __$$MissionDataModelImplCopyWithImpl<$Res>
    extends _$MissionDataModelCopyWithImpl<$Res, _$MissionDataModelImpl>
    implements _$$MissionDataModelImplCopyWith<$Res> {
  __$$MissionDataModelImplCopyWithImpl(_$MissionDataModelImpl _value,
      $Res Function(_$MissionDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MissionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMyPost = null,
    Object? comments = null,
  }) {
    return _then(_$MissionDataModelImpl(
      isMyPost: null == isMyPost
          ? _value.isMyPost
          : isMyPost // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<MissionCommentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionDataModelImpl implements _MissionDataModel {
  const _$MissionDataModelImpl(
      {required this.isMyPost,
      required final List<MissionCommentModel> comments})
      : _comments = comments;

  factory _$MissionDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionDataModelImplFromJson(json);

  @override
  final bool isMyPost;
  final List<MissionCommentModel> _comments;
  @override
  List<MissionCommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'MissionDataModel(isMyPost: $isMyPost, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionDataModelImpl &&
            (identical(other.isMyPost, isMyPost) ||
                other.isMyPost == isMyPost) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, isMyPost, const DeepCollectionEquality().hash(_comments));

  /// Create a copy of MissionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionDataModelImplCopyWith<_$MissionDataModelImpl> get copyWith =>
      __$$MissionDataModelImplCopyWithImpl<_$MissionDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionDataModelImplToJson(
      this,
    );
  }
}

abstract class _MissionDataModel implements MissionDataModel {
  const factory _MissionDataModel(
          {required final bool isMyPost,
          required final List<MissionCommentModel> comments}) =
      _$MissionDataModelImpl;

  factory _MissionDataModel.fromJson(Map<String, dynamic> json) =
      _$MissionDataModelImpl.fromJson;

  @override
  bool get isMyPost;
  @override
  List<MissionCommentModel> get comments;

  /// Create a copy of MissionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissionDataModelImplCopyWith<_$MissionDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MissionCommentModel _$MissionCommentModelFromJson(Map<String, dynamic> json) {
  return _MissionCommentModel.fromJson(json);
}

/// @nodoc
mixin _$MissionCommentModel {
  int get missionPostCommentId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isMyComment => throw _privateConstructorUsedError;

  /// Serializes this MissionCommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MissionCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MissionCommentModelCopyWith<MissionCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionCommentModelCopyWith<$Res> {
  factory $MissionCommentModelCopyWith(
          MissionCommentModel value, $Res Function(MissionCommentModel) then) =
      _$MissionCommentModelCopyWithImpl<$Res, MissionCommentModel>;
  @useResult
  $Res call(
      {int missionPostCommentId,
      String nickname,
      String profileImage,
      String date,
      String content,
      bool isMyComment});
}

/// @nodoc
class _$MissionCommentModelCopyWithImpl<$Res, $Val extends MissionCommentModel>
    implements $MissionCommentModelCopyWith<$Res> {
  _$MissionCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MissionCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPostCommentId = null,
    Object? nickname = null,
    Object? profileImage = null,
    Object? date = null,
    Object? content = null,
    Object? isMyComment = null,
  }) {
    return _then(_value.copyWith(
      missionPostCommentId: null == missionPostCommentId
          ? _value.missionPostCommentId
          : missionPostCommentId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isMyComment: null == isMyComment
          ? _value.isMyComment
          : isMyComment // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissionCommentModelImplCopyWith<$Res>
    implements $MissionCommentModelCopyWith<$Res> {
  factory _$$MissionCommentModelImplCopyWith(_$MissionCommentModelImpl value,
          $Res Function(_$MissionCommentModelImpl) then) =
      __$$MissionCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int missionPostCommentId,
      String nickname,
      String profileImage,
      String date,
      String content,
      bool isMyComment});
}

/// @nodoc
class __$$MissionCommentModelImplCopyWithImpl<$Res>
    extends _$MissionCommentModelCopyWithImpl<$Res, _$MissionCommentModelImpl>
    implements _$$MissionCommentModelImplCopyWith<$Res> {
  __$$MissionCommentModelImplCopyWithImpl(_$MissionCommentModelImpl _value,
      $Res Function(_$MissionCommentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MissionCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPostCommentId = null,
    Object? nickname = null,
    Object? profileImage = null,
    Object? date = null,
    Object? content = null,
    Object? isMyComment = null,
  }) {
    return _then(_$MissionCommentModelImpl(
      missionPostCommentId: null == missionPostCommentId
          ? _value.missionPostCommentId
          : missionPostCommentId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isMyComment: null == isMyComment
          ? _value.isMyComment
          : isMyComment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionCommentModelImpl implements _MissionCommentModel {
  const _$MissionCommentModelImpl(
      {required this.missionPostCommentId,
      required this.nickname,
      required this.profileImage,
      required this.date,
      required this.content,
      required this.isMyComment});

  factory _$MissionCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionCommentModelImplFromJson(json);

  @override
  final int missionPostCommentId;
  @override
  final String nickname;
  @override
  final String profileImage;
  @override
  final String date;
  @override
  final String content;
  @override
  final bool isMyComment;

  @override
  String toString() {
    return 'MissionCommentModel(missionPostCommentId: $missionPostCommentId, nickname: $nickname, profileImage: $profileImage, date: $date, content: $content, isMyComment: $isMyComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionCommentModelImpl &&
            (identical(other.missionPostCommentId, missionPostCommentId) ||
                other.missionPostCommentId == missionPostCommentId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isMyComment, isMyComment) ||
                other.isMyComment == isMyComment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, missionPostCommentId, nickname,
      profileImage, date, content, isMyComment);

  /// Create a copy of MissionCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionCommentModelImplCopyWith<_$MissionCommentModelImpl> get copyWith =>
      __$$MissionCommentModelImplCopyWithImpl<_$MissionCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionCommentModelImplToJson(
      this,
    );
  }
}

abstract class _MissionCommentModel implements MissionCommentModel {
  const factory _MissionCommentModel(
      {required final int missionPostCommentId,
      required final String nickname,
      required final String profileImage,
      required final String date,
      required final String content,
      required final bool isMyComment}) = _$MissionCommentModelImpl;

  factory _MissionCommentModel.fromJson(Map<String, dynamic> json) =
      _$MissionCommentModelImpl.fromJson;

  @override
  int get missionPostCommentId;
  @override
  String get nickname;
  @override
  String get profileImage;
  @override
  String get date;
  @override
  String get content;
  @override
  bool get isMyComment;

  /// Create a copy of MissionCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissionCommentModelImplCopyWith<_$MissionCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
