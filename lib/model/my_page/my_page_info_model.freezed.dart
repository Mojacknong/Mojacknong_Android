// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_page_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyPageInfoModel _$MyPageInfoModelFromJson(Map<String, dynamic> json) {
  return _MyPageInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MyPageInfoModel {
  String get nickName => throw _privateConstructorUsedError;
  String get userImageUrl => throw _privateConstructorUsedError;
  int get dday => throw _privateConstructorUsedError;

  /// Serializes this MyPageInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyPageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyPageInfoModelCopyWith<MyPageInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageInfoModelCopyWith<$Res> {
  factory $MyPageInfoModelCopyWith(
          MyPageInfoModel value, $Res Function(MyPageInfoModel) then) =
      _$MyPageInfoModelCopyWithImpl<$Res, MyPageInfoModel>;
  @useResult
  $Res call({String nickName, String userImageUrl, int dday});
}

/// @nodoc
class _$MyPageInfoModelCopyWithImpl<$Res, $Val extends MyPageInfoModel>
    implements $MyPageInfoModelCopyWith<$Res> {
  _$MyPageInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyPageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? userImageUrl = null,
    Object? dday = null,
  }) {
    return _then(_value.copyWith(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: null == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dday: null == dday
          ? _value.dday
          : dday // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyPageInfoModelImplCopyWith<$Res>
    implements $MyPageInfoModelCopyWith<$Res> {
  factory _$$MyPageInfoModelImplCopyWith(_$MyPageInfoModelImpl value,
          $Res Function(_$MyPageInfoModelImpl) then) =
      __$$MyPageInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickName, String userImageUrl, int dday});
}

/// @nodoc
class __$$MyPageInfoModelImplCopyWithImpl<$Res>
    extends _$MyPageInfoModelCopyWithImpl<$Res, _$MyPageInfoModelImpl>
    implements _$$MyPageInfoModelImplCopyWith<$Res> {
  __$$MyPageInfoModelImplCopyWithImpl(
      _$MyPageInfoModelImpl _value, $Res Function(_$MyPageInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? userImageUrl = null,
    Object? dday = null,
  }) {
    return _then(_$MyPageInfoModelImpl(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: null == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dday: null == dday
          ? _value.dday
          : dday // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyPageInfoModelImpl implements _MyPageInfoModel {
  const _$MyPageInfoModelImpl(
      {required this.nickName, required this.userImageUrl, required this.dday});

  factory _$MyPageInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyPageInfoModelImplFromJson(json);

  @override
  final String nickName;
  @override
  final String userImageUrl;
  @override
  final int dday;

  @override
  String toString() {
    return 'MyPageInfoModel(nickName: $nickName, userImageUrl: $userImageUrl, dday: $dday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPageInfoModelImpl &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl) &&
            (identical(other.dday, dday) || other.dday == dday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickName, userImageUrl, dday);

  /// Create a copy of MyPageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPageInfoModelImplCopyWith<_$MyPageInfoModelImpl> get copyWith =>
      __$$MyPageInfoModelImplCopyWithImpl<_$MyPageInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyPageInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MyPageInfoModel implements MyPageInfoModel {
  const factory _MyPageInfoModel(
      {required final String nickName,
      required final String userImageUrl,
      required final int dday}) = _$MyPageInfoModelImpl;

  factory _MyPageInfoModel.fromJson(Map<String, dynamic> json) =
      _$MyPageInfoModelImpl.fromJson;

  @override
  String get nickName;
  @override
  String get userImageUrl;
  @override
  int get dday;

  /// Create a copy of MyPageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyPageInfoModelImplCopyWith<_$MyPageInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
