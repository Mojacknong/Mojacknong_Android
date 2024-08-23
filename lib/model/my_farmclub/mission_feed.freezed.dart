// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MissionFeed _$MissionFeedFromJson(Map<String, dynamic> json) {
  return _MissionFeed.fromJson(json);
}

/// @nodoc
mixin _$MissionFeed {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  MissionData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionFeedCopyWith<MissionFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionFeedCopyWith<$Res> {
  factory $MissionFeedCopyWith(
          MissionFeed value, $Res Function(MissionFeed) then) =
      _$MissionFeedCopyWithImpl<$Res, MissionFeed>;
  @useResult
  $Res call({int code, String message, MissionData data});

  $MissionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MissionFeedCopyWithImpl<$Res, $Val extends MissionFeed>
    implements $MissionFeedCopyWith<$Res> {
  _$MissionFeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MissionData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MissionDataCopyWith<$Res> get data {
    return $MissionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MissionFeedImplCopyWith<$Res>
    implements $MissionFeedCopyWith<$Res> {
  factory _$$MissionFeedImplCopyWith(
          _$MissionFeedImpl value, $Res Function(_$MissionFeedImpl) then) =
      __$$MissionFeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, MissionData data});

  @override
  $MissionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MissionFeedImplCopyWithImpl<$Res>
    extends _$MissionFeedCopyWithImpl<$Res, _$MissionFeedImpl>
    implements _$$MissionFeedImplCopyWith<$Res> {
  __$$MissionFeedImplCopyWithImpl(
      _$MissionFeedImpl _value, $Res Function(_$MissionFeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$MissionFeedImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MissionData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionFeedImpl implements _MissionFeed {
  const _$MissionFeedImpl(
      {required this.code, required this.message, required this.data});

  factory _$MissionFeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionFeedImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final MissionData data;

  @override
  String toString() {
    return 'MissionFeed(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionFeedImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionFeedImplCopyWith<_$MissionFeedImpl> get copyWith =>
      __$$MissionFeedImplCopyWithImpl<_$MissionFeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionFeedImplToJson(
      this,
    );
  }
}

abstract class _MissionFeed implements MissionFeed {
  const factory _MissionFeed(
      {required final int code,
      required final String message,
      required final MissionData data}) = _$MissionFeedImpl;

  factory _MissionFeed.fromJson(Map<String, dynamic> json) =
      _$MissionFeedImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  MissionData get data;
  @override
  @JsonKey(ignore: true)
  _$$MissionFeedImplCopyWith<_$MissionFeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MissionData _$MissionDataFromJson(Map<String, dynamic> json) {
  return _MissionData.fromJson(json);
}

/// @nodoc
mixin _$MissionData {
  List<MissionPost> get missionPosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionDataCopyWith<MissionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionDataCopyWith<$Res> {
  factory $MissionDataCopyWith(
          MissionData value, $Res Function(MissionData) then) =
      _$MissionDataCopyWithImpl<$Res, MissionData>;
  @useResult
  $Res call({List<MissionPost> missionPosts});
}

/// @nodoc
class _$MissionDataCopyWithImpl<$Res, $Val extends MissionData>
    implements $MissionDataCopyWith<$Res> {
  _$MissionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPosts = null,
  }) {
    return _then(_value.copyWith(
      missionPosts: null == missionPosts
          ? _value.missionPosts
          : missionPosts // ignore: cast_nullable_to_non_nullable
              as List<MissionPost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissionDataImplCopyWith<$Res>
    implements $MissionDataCopyWith<$Res> {
  factory _$$MissionDataImplCopyWith(
          _$MissionDataImpl value, $Res Function(_$MissionDataImpl) then) =
      __$$MissionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MissionPost> missionPosts});
}

/// @nodoc
class __$$MissionDataImplCopyWithImpl<$Res>
    extends _$MissionDataCopyWithImpl<$Res, _$MissionDataImpl>
    implements _$$MissionDataImplCopyWith<$Res> {
  __$$MissionDataImplCopyWithImpl(
      _$MissionDataImpl _value, $Res Function(_$MissionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPosts = null,
  }) {
    return _then(_$MissionDataImpl(
      missionPosts: null == missionPosts
          ? _value._missionPosts
          : missionPosts // ignore: cast_nullable_to_non_nullable
              as List<MissionPost>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionDataImpl implements _MissionData {
  const _$MissionDataImpl({required final List<MissionPost> missionPosts})
      : _missionPosts = missionPosts;

  factory _$MissionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionDataImplFromJson(json);

  final List<MissionPost> _missionPosts;
  @override
  List<MissionPost> get missionPosts {
    if (_missionPosts is EqualUnmodifiableListView) return _missionPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missionPosts);
  }

  @override
  String toString() {
    return 'MissionData(missionPosts: $missionPosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionDataImpl &&
            const DeepCollectionEquality()
                .equals(other._missionPosts, _missionPosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_missionPosts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionDataImplCopyWith<_$MissionDataImpl> get copyWith =>
      __$$MissionDataImplCopyWithImpl<_$MissionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionDataImplToJson(
      this,
    );
  }
}

abstract class _MissionData implements MissionData {
  const factory _MissionData({required final List<MissionPost> missionPosts}) =
      _$MissionDataImpl;

  factory _MissionData.fromJson(Map<String, dynamic> json) =
      _$MissionDataImpl.fromJson;

  @override
  List<MissionPost> get missionPosts;
  @override
  @JsonKey(ignore: true)
  _$$MissionDataImplCopyWith<_$MissionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MissionPost _$MissionPostFromJson(Map<String, dynamic> json) {
  return _MissionPost.fromJson(json);
}

/// @nodoc
mixin _$MissionPost {
  int get missionPostId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionPostCopyWith<MissionPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionPostCopyWith<$Res> {
  factory $MissionPostCopyWith(
          MissionPost value, $Res Function(MissionPost) then) =
      _$MissionPostCopyWithImpl<$Res, MissionPost>;
  @useResult
  $Res call(
      {int missionPostId,
      String nickname,
      String profileImage,
      DateTime date,
      String image,
      String content,
      int likeCount,
      int commentCount,
      bool isLiked});
}

/// @nodoc
class _$MissionPostCopyWithImpl<$Res, $Val extends MissionPost>
    implements $MissionPostCopyWith<$Res> {
  _$MissionPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPostId = null,
    Object? nickname = null,
    Object? profileImage = null,
    Object? date = null,
    Object? image = null,
    Object? content = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? isLiked = null,
  }) {
    return _then(_value.copyWith(
      missionPostId: null == missionPostId
          ? _value.missionPostId
          : missionPostId // ignore: cast_nullable_to_non_nullable
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
              as DateTime,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissionPostImplCopyWith<$Res>
    implements $MissionPostCopyWith<$Res> {
  factory _$$MissionPostImplCopyWith(
          _$MissionPostImpl value, $Res Function(_$MissionPostImpl) then) =
      __$$MissionPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int missionPostId,
      String nickname,
      String profileImage,
      DateTime date,
      String image,
      String content,
      int likeCount,
      int commentCount,
      bool isLiked});
}

/// @nodoc
class __$$MissionPostImplCopyWithImpl<$Res>
    extends _$MissionPostCopyWithImpl<$Res, _$MissionPostImpl>
    implements _$$MissionPostImplCopyWith<$Res> {
  __$$MissionPostImplCopyWithImpl(
      _$MissionPostImpl _value, $Res Function(_$MissionPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPostId = null,
    Object? nickname = null,
    Object? profileImage = null,
    Object? date = null,
    Object? image = null,
    Object? content = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? isLiked = null,
  }) {
    return _then(_$MissionPostImpl(
      missionPostId: null == missionPostId
          ? _value.missionPostId
          : missionPostId // ignore: cast_nullable_to_non_nullable
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
              as DateTime,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionPostImpl implements _MissionPost {
  const _$MissionPostImpl(
      {required this.missionPostId,
      required this.nickname,
      required this.profileImage,
      required this.date,
      required this.image,
      required this.content,
      required this.likeCount,
      required this.commentCount,
      required this.isLiked});

  factory _$MissionPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionPostImplFromJson(json);

  @override
  final int missionPostId;
  @override
  final String nickname;
  @override
  final String profileImage;
  @override
  final DateTime date;
  @override
  final String image;
  @override
  final String content;
  @override
  final int likeCount;
  @override
  final int commentCount;
  @override
  final bool isLiked;

  @override
  String toString() {
    return 'MissionPost(missionPostId: $missionPostId, nickname: $nickname, profileImage: $profileImage, date: $date, image: $image, content: $content, likeCount: $likeCount, commentCount: $commentCount, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionPostImpl &&
            (identical(other.missionPostId, missionPostId) ||
                other.missionPostId == missionPostId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, missionPostId, nickname,
      profileImage, date, image, content, likeCount, commentCount, isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionPostImplCopyWith<_$MissionPostImpl> get copyWith =>
      __$$MissionPostImplCopyWithImpl<_$MissionPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionPostImplToJson(
      this,
    );
  }
}

abstract class _MissionPost implements MissionPost {
  const factory _MissionPost(
      {required final int missionPostId,
      required final String nickname,
      required final String profileImage,
      required final DateTime date,
      required final String image,
      required final String content,
      required final int likeCount,
      required final int commentCount,
      required final bool isLiked}) = _$MissionPostImpl;

  factory _MissionPost.fromJson(Map<String, dynamic> json) =
      _$MissionPostImpl.fromJson;

  @override
  int get missionPostId;
  @override
  String get nickname;
  @override
  String get profileImage;
  @override
  DateTime get date;
  @override
  String get image;
  @override
  String get content;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  bool get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$MissionPostImplCopyWith<_$MissionPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
