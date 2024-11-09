// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_farmclub_certification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFarmclubCertificationModel _$MyFarmclubCertificationModelFromJson(
    Map<String, dynamic> json) {
  return _MyFarmclubCertificationModel.fromJson(json);
}

/// @nodoc
mixin _$MyFarmclubCertificationModel {
  List<MissionPost> get missionPosts => throw _privateConstructorUsedError;

  /// Serializes this MyFarmclubCertificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyFarmclubCertificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyFarmclubCertificationModelCopyWith<MyFarmclubCertificationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFarmclubCertificationModelCopyWith<$Res> {
  factory $MyFarmclubCertificationModelCopyWith(
          MyFarmclubCertificationModel value,
          $Res Function(MyFarmclubCertificationModel) then) =
      _$MyFarmclubCertificationModelCopyWithImpl<$Res,
          MyFarmclubCertificationModel>;
  @useResult
  $Res call({List<MissionPost> missionPosts});
}

/// @nodoc
class _$MyFarmclubCertificationModelCopyWithImpl<$Res,
        $Val extends MyFarmclubCertificationModel>
    implements $MyFarmclubCertificationModelCopyWith<$Res> {
  _$MyFarmclubCertificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyFarmclubCertificationModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$MyFarmclubCertificationModelImplCopyWith<$Res>
    implements $MyFarmclubCertificationModelCopyWith<$Res> {
  factory _$$MyFarmclubCertificationModelImplCopyWith(
          _$MyFarmclubCertificationModelImpl value,
          $Res Function(_$MyFarmclubCertificationModelImpl) then) =
      __$$MyFarmclubCertificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MissionPost> missionPosts});
}

/// @nodoc
class __$$MyFarmclubCertificationModelImplCopyWithImpl<$Res>
    extends _$MyFarmclubCertificationModelCopyWithImpl<$Res,
        _$MyFarmclubCertificationModelImpl>
    implements _$$MyFarmclubCertificationModelImplCopyWith<$Res> {
  __$$MyFarmclubCertificationModelImplCopyWithImpl(
      _$MyFarmclubCertificationModelImpl _value,
      $Res Function(_$MyFarmclubCertificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyFarmclubCertificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPosts = null,
  }) {
    return _then(_$MyFarmclubCertificationModelImpl(
      missionPosts: null == missionPosts
          ? _value._missionPosts
          : missionPosts // ignore: cast_nullable_to_non_nullable
              as List<MissionPost>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyFarmclubCertificationModelImpl
    implements _MyFarmclubCertificationModel {
  const _$MyFarmclubCertificationModelImpl(
      {required final List<MissionPost> missionPosts})
      : _missionPosts = missionPosts;

  factory _$MyFarmclubCertificationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyFarmclubCertificationModelImplFromJson(json);

  final List<MissionPost> _missionPosts;
  @override
  List<MissionPost> get missionPosts {
    if (_missionPosts is EqualUnmodifiableListView) return _missionPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missionPosts);
  }

  @override
  String toString() {
    return 'MyFarmclubCertificationModel(missionPosts: $missionPosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFarmclubCertificationModelImpl &&
            const DeepCollectionEquality()
                .equals(other._missionPosts, _missionPosts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_missionPosts));

  /// Create a copy of MyFarmclubCertificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFarmclubCertificationModelImplCopyWith<
          _$MyFarmclubCertificationModelImpl>
      get copyWith => __$$MyFarmclubCertificationModelImplCopyWithImpl<
          _$MyFarmclubCertificationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFarmclubCertificationModelImplToJson(
      this,
    );
  }
}

abstract class _MyFarmclubCertificationModel
    implements MyFarmclubCertificationModel {
  const factory _MyFarmclubCertificationModel(
          {required final List<MissionPost> missionPosts}) =
      _$MyFarmclubCertificationModelImpl;

  factory _MyFarmclubCertificationModel.fromJson(Map<String, dynamic> json) =
      _$MyFarmclubCertificationModelImpl.fromJson;

  @override
  List<MissionPost> get missionPosts;

  /// Create a copy of MyFarmclubCertificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyFarmclubCertificationModelImplCopyWith<
          _$MyFarmclubCertificationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MissionPost _$MissionPostFromJson(Map<String, dynamic> json) {
  return _MissionPost.fromJson(json);
}

/// @nodoc
mixin _$MissionPost {
  int get stepNum => throw _privateConstructorUsedError;
  String get stepName => throw _privateConstructorUsedError;
  String get postImage => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  /// Serializes this MissionPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MissionPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {int stepNum,
      String stepName,
      String postImage,
      String content,
      String date});
}

/// @nodoc
class _$MissionPostCopyWithImpl<$Res, $Val extends MissionPost>
    implements $MissionPostCopyWith<$Res> {
  _$MissionPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MissionPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepNum = null,
    Object? stepName = null,
    Object? postImage = null,
    Object? content = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      stepNum: null == stepNum
          ? _value.stepNum
          : stepNum // ignore: cast_nullable_to_non_nullable
              as int,
      stepName: null == stepName
          ? _value.stepName
          : stepName // ignore: cast_nullable_to_non_nullable
              as String,
      postImage: null == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
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
      {int stepNum,
      String stepName,
      String postImage,
      String content,
      String date});
}

/// @nodoc
class __$$MissionPostImplCopyWithImpl<$Res>
    extends _$MissionPostCopyWithImpl<$Res, _$MissionPostImpl>
    implements _$$MissionPostImplCopyWith<$Res> {
  __$$MissionPostImplCopyWithImpl(
      _$MissionPostImpl _value, $Res Function(_$MissionPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of MissionPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepNum = null,
    Object? stepName = null,
    Object? postImage = null,
    Object? content = null,
    Object? date = null,
  }) {
    return _then(_$MissionPostImpl(
      stepNum: null == stepNum
          ? _value.stepNum
          : stepNum // ignore: cast_nullable_to_non_nullable
              as int,
      stepName: null == stepName
          ? _value.stepName
          : stepName // ignore: cast_nullable_to_non_nullable
              as String,
      postImage: null == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionPostImpl implements _MissionPost {
  const _$MissionPostImpl(
      {required this.stepNum,
      required this.stepName,
      required this.postImage,
      required this.content,
      required this.date});

  factory _$MissionPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionPostImplFromJson(json);

  @override
  final int stepNum;
  @override
  final String stepName;
  @override
  final String postImage;
  @override
  final String content;
  @override
  final String date;

  @override
  String toString() {
    return 'MissionPost(stepNum: $stepNum, stepName: $stepName, postImage: $postImage, content: $content, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionPostImpl &&
            (identical(other.stepNum, stepNum) || other.stepNum == stepNum) &&
            (identical(other.stepName, stepName) ||
                other.stepName == stepName) &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stepNum, stepName, postImage, content, date);

  /// Create a copy of MissionPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {required final int stepNum,
      required final String stepName,
      required final String postImage,
      required final String content,
      required final String date}) = _$MissionPostImpl;

  factory _MissionPost.fromJson(Map<String, dynamic> json) =
      _$MissionPostImpl.fromJson;

  @override
  int get stepNum;
  @override
  String get stepName;
  @override
  String get postImage;
  @override
  String get content;
  @override
  String get date;

  /// Create a copy of MissionPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissionPostImplCopyWith<_$MissionPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
