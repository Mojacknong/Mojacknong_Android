// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_page_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyPageProfileModel _$MyPageProfileModelFromJson(Map<String, dynamic> json) {
  return _MyPageProfileModel.fromJson(json);
}

/// @nodoc
mixin _$MyPageProfileModel {
  String get nickname => throw _privateConstructorUsedError;
  @FileConverter()
  File? get image => throw _privateConstructorUsedError;
  bool? get isInfoChangeComplete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyPageProfileModelCopyWith<MyPageProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageProfileModelCopyWith<$Res> {
  factory $MyPageProfileModelCopyWith(
          MyPageProfileModel value, $Res Function(MyPageProfileModel) then) =
      _$MyPageProfileModelCopyWithImpl<$Res, MyPageProfileModel>;
  @useResult
  $Res call(
      {String nickname,
      @FileConverter() File? image,
      bool? isInfoChangeComplete});
}

/// @nodoc
class _$MyPageProfileModelCopyWithImpl<$Res, $Val extends MyPageProfileModel>
    implements $MyPageProfileModelCopyWith<$Res> {
  _$MyPageProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? image = freezed,
    Object? isInfoChangeComplete = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      isInfoChangeComplete: freezed == isInfoChangeComplete
          ? _value.isInfoChangeComplete
          : isInfoChangeComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyPageProfileModelImplCopyWith<$Res>
    implements $MyPageProfileModelCopyWith<$Res> {
  factory _$$MyPageProfileModelImplCopyWith(_$MyPageProfileModelImpl value,
          $Res Function(_$MyPageProfileModelImpl) then) =
      __$$MyPageProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickname,
      @FileConverter() File? image,
      bool? isInfoChangeComplete});
}

/// @nodoc
class __$$MyPageProfileModelImplCopyWithImpl<$Res>
    extends _$MyPageProfileModelCopyWithImpl<$Res, _$MyPageProfileModelImpl>
    implements _$$MyPageProfileModelImplCopyWith<$Res> {
  __$$MyPageProfileModelImplCopyWithImpl(_$MyPageProfileModelImpl _value,
      $Res Function(_$MyPageProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? image = freezed,
    Object? isInfoChangeComplete = freezed,
  }) {
    return _then(_$MyPageProfileModelImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      isInfoChangeComplete: freezed == isInfoChangeComplete
          ? _value.isInfoChangeComplete
          : isInfoChangeComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyPageProfileModelImpl implements _MyPageProfileModel {
  const _$MyPageProfileModelImpl(
      {required this.nickname,
      @FileConverter() this.image,
      this.isInfoChangeComplete});

  factory _$MyPageProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyPageProfileModelImplFromJson(json);

  @override
  final String nickname;
  @override
  @FileConverter()
  final File? image;
  @override
  final bool? isInfoChangeComplete;

  @override
  String toString() {
    return 'MyPageProfileModel(nickname: $nickname, image: $image, isInfoChangeComplete: $isInfoChangeComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPageProfileModelImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isInfoChangeComplete, isInfoChangeComplete) ||
                other.isInfoChangeComplete == isInfoChangeComplete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nickname, image, isInfoChangeComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPageProfileModelImplCopyWith<_$MyPageProfileModelImpl> get copyWith =>
      __$$MyPageProfileModelImplCopyWithImpl<_$MyPageProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyPageProfileModelImplToJson(
      this,
    );
  }
}

abstract class _MyPageProfileModel implements MyPageProfileModel {
  const factory _MyPageProfileModel(
      {required final String nickname,
      @FileConverter() final File? image,
      final bool? isInfoChangeComplete}) = _$MyPageProfileModelImpl;

  factory _MyPageProfileModel.fromJson(Map<String, dynamic> json) =
      _$MyPageProfileModelImpl.fromJson;

  @override
  String get nickname;
  @override
  @FileConverter()
  File? get image;
  @override
  bool? get isInfoChangeComplete;
  @override
  @JsonKey(ignore: true)
  _$$MyPageProfileModelImplCopyWith<_$MyPageProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
