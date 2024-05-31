// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnBoardingUserProfileModel _$OnBoardingUserProfileModelFromJson(
    Map<String, dynamic> json) {
  return _OnBoardingUserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$OnBoardingUserProfileModel {
  String? get file => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBoardingUserProfileModelCopyWith<OnBoardingUserProfileModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingUserProfileModelCopyWith<$Res> {
  factory $OnBoardingUserProfileModelCopyWith(OnBoardingUserProfileModel value,
          $Res Function(OnBoardingUserProfileModel) then) =
      _$OnBoardingUserProfileModelCopyWithImpl<$Res,
          OnBoardingUserProfileModel>;
  @useResult
  $Res call({String? file, String nickName});
}

/// @nodoc
class _$OnBoardingUserProfileModelCopyWithImpl<$Res,
        $Val extends OnBoardingUserProfileModel>
    implements $OnBoardingUserProfileModelCopyWith<$Res> {
  _$OnBoardingUserProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? nickName = null,
  }) {
    return _then(_value.copyWith(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnBoardingUserProfileModelImplCopyWith<$Res>
    implements $OnBoardingUserProfileModelCopyWith<$Res> {
  factory _$$OnBoardingUserProfileModelImplCopyWith(
          _$OnBoardingUserProfileModelImpl value,
          $Res Function(_$OnBoardingUserProfileModelImpl) then) =
      __$$OnBoardingUserProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? file, String nickName});
}

/// @nodoc
class __$$OnBoardingUserProfileModelImplCopyWithImpl<$Res>
    extends _$OnBoardingUserProfileModelCopyWithImpl<$Res,
        _$OnBoardingUserProfileModelImpl>
    implements _$$OnBoardingUserProfileModelImplCopyWith<$Res> {
  __$$OnBoardingUserProfileModelImplCopyWithImpl(
      _$OnBoardingUserProfileModelImpl _value,
      $Res Function(_$OnBoardingUserProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? nickName = null,
  }) {
    return _then(_$OnBoardingUserProfileModelImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnBoardingUserProfileModelImpl implements _OnBoardingUserProfileModel {
  _$OnBoardingUserProfileModelImpl(
      {required this.file, required this.nickName});

  factory _$OnBoardingUserProfileModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OnBoardingUserProfileModelImplFromJson(json);

  @override
  final String? file;
  @override
  final String nickName;

  @override
  String toString() {
    return 'OnBoardingUserProfileModel(file: $file, nickName: $nickName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingUserProfileModelImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, file, nickName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingUserProfileModelImplCopyWith<_$OnBoardingUserProfileModelImpl>
      get copyWith => __$$OnBoardingUserProfileModelImplCopyWithImpl<
          _$OnBoardingUserProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBoardingUserProfileModelImplToJson(
      this,
    );
  }
}

abstract class _OnBoardingUserProfileModel
    implements OnBoardingUserProfileModel {
  factory _OnBoardingUserProfileModel(
      {required final String? file,
      required final String nickName}) = _$OnBoardingUserProfileModelImpl;

  factory _OnBoardingUserProfileModel.fromJson(Map<String, dynamic> json) =
      _$OnBoardingUserProfileModelImpl.fromJson;

  @override
  String? get file;
  @override
  String get nickName;
  @override
  @JsonKey(ignore: true)
  _$$OnBoardingUserProfileModelImplCopyWith<_$OnBoardingUserProfileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
