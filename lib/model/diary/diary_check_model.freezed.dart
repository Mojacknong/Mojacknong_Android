// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_check_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiaryCheckModel _$DiaryCheckModelFromJson(Map<String, dynamic> json) {
  return _DiaryCheckModel.fromJson(json);
}

/// @nodoc
mixin _$DiaryCheckModel {
  bool get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryCheckModelCopyWith<DiaryCheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCheckModelCopyWith<$Res> {
  factory $DiaryCheckModelCopyWith(
          DiaryCheckModel value, $Res Function(DiaryCheckModel) then) =
      _$DiaryCheckModelCopyWithImpl<$Res, DiaryCheckModel>;
  @useResult
  $Res call({bool state});
}

/// @nodoc
class _$DiaryCheckModelCopyWithImpl<$Res, $Val extends DiaryCheckModel>
    implements $DiaryCheckModelCopyWith<$Res> {
  _$DiaryCheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiaryCheckModelImplCopyWith<$Res>
    implements $DiaryCheckModelCopyWith<$Res> {
  factory _$$DiaryCheckModelImplCopyWith(_$DiaryCheckModelImpl value,
          $Res Function(_$DiaryCheckModelImpl) then) =
      __$$DiaryCheckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool state});
}

/// @nodoc
class __$$DiaryCheckModelImplCopyWithImpl<$Res>
    extends _$DiaryCheckModelCopyWithImpl<$Res, _$DiaryCheckModelImpl>
    implements _$$DiaryCheckModelImplCopyWith<$Res> {
  __$$DiaryCheckModelImplCopyWithImpl(
      _$DiaryCheckModelImpl _value, $Res Function(_$DiaryCheckModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$DiaryCheckModelImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiaryCheckModelImpl implements _DiaryCheckModel {
  const _$DiaryCheckModelImpl({required this.state});

  factory _$DiaryCheckModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiaryCheckModelImplFromJson(json);

  @override
  final bool state;

  @override
  String toString() {
    return 'DiaryCheckModel(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryCheckModelImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryCheckModelImplCopyWith<_$DiaryCheckModelImpl> get copyWith =>
      __$$DiaryCheckModelImplCopyWithImpl<_$DiaryCheckModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiaryCheckModelImplToJson(
      this,
    );
  }
}

abstract class _DiaryCheckModel implements DiaryCheckModel {
  const factory _DiaryCheckModel({required final bool state}) =
      _$DiaryCheckModelImpl;

  factory _DiaryCheckModel.fromJson(Map<String, dynamic> json) =
      _$DiaryCheckModelImpl.fromJson;

  @override
  bool get state;
  @override
  @JsonKey(ignore: true)
  _$$DiaryCheckModelImplCopyWith<_$DiaryCheckModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
