// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_veggie_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserVeggieHistoryModel _$UserVeggieHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _UserVeggieHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$UserVeggieHistoryModel {
  int get veggieHistoryCount => throw _privateConstructorUsedError;
  List<VeggieHistoryIconModel> get veggieHistoryIcons =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserVeggieHistoryModelCopyWith<UserVeggieHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVeggieHistoryModelCopyWith<$Res> {
  factory $UserVeggieHistoryModelCopyWith(UserVeggieHistoryModel value,
          $Res Function(UserVeggieHistoryModel) then) =
      _$UserVeggieHistoryModelCopyWithImpl<$Res, UserVeggieHistoryModel>;
  @useResult
  $Res call(
      {int veggieHistoryCount,
      List<VeggieHistoryIconModel> veggieHistoryIcons});
}

/// @nodoc
class _$UserVeggieHistoryModelCopyWithImpl<$Res,
        $Val extends UserVeggieHistoryModel>
    implements $UserVeggieHistoryModelCopyWith<$Res> {
  _$UserVeggieHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? veggieHistoryCount = null,
    Object? veggieHistoryIcons = null,
  }) {
    return _then(_value.copyWith(
      veggieHistoryCount: null == veggieHistoryCount
          ? _value.veggieHistoryCount
          : veggieHistoryCount // ignore: cast_nullable_to_non_nullable
              as int,
      veggieHistoryIcons: null == veggieHistoryIcons
          ? _value.veggieHistoryIcons
          : veggieHistoryIcons // ignore: cast_nullable_to_non_nullable
              as List<VeggieHistoryIconModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserVeggieHistoryModelImplCopyWith<$Res>
    implements $UserVeggieHistoryModelCopyWith<$Res> {
  factory _$$UserVeggieHistoryModelImplCopyWith(
          _$UserVeggieHistoryModelImpl value,
          $Res Function(_$UserVeggieHistoryModelImpl) then) =
      __$$UserVeggieHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int veggieHistoryCount,
      List<VeggieHistoryIconModel> veggieHistoryIcons});
}

/// @nodoc
class __$$UserVeggieHistoryModelImplCopyWithImpl<$Res>
    extends _$UserVeggieHistoryModelCopyWithImpl<$Res,
        _$UserVeggieHistoryModelImpl>
    implements _$$UserVeggieHistoryModelImplCopyWith<$Res> {
  __$$UserVeggieHistoryModelImplCopyWithImpl(
      _$UserVeggieHistoryModelImpl _value,
      $Res Function(_$UserVeggieHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? veggieHistoryCount = null,
    Object? veggieHistoryIcons = null,
  }) {
    return _then(_$UserVeggieHistoryModelImpl(
      veggieHistoryCount: null == veggieHistoryCount
          ? _value.veggieHistoryCount
          : veggieHistoryCount // ignore: cast_nullable_to_non_nullable
              as int,
      veggieHistoryIcons: null == veggieHistoryIcons
          ? _value._veggieHistoryIcons
          : veggieHistoryIcons // ignore: cast_nullable_to_non_nullable
              as List<VeggieHistoryIconModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserVeggieHistoryModelImpl implements _UserVeggieHistoryModel {
  const _$UserVeggieHistoryModelImpl(
      {required this.veggieHistoryCount,
      required final List<VeggieHistoryIconModel> veggieHistoryIcons})
      : _veggieHistoryIcons = veggieHistoryIcons;

  factory _$UserVeggieHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserVeggieHistoryModelImplFromJson(json);

  @override
  final int veggieHistoryCount;
  final List<VeggieHistoryIconModel> _veggieHistoryIcons;
  @override
  List<VeggieHistoryIconModel> get veggieHistoryIcons {
    if (_veggieHistoryIcons is EqualUnmodifiableListView)
      return _veggieHistoryIcons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_veggieHistoryIcons);
  }

  @override
  String toString() {
    return 'UserVeggieHistoryModel(veggieHistoryCount: $veggieHistoryCount, veggieHistoryIcons: $veggieHistoryIcons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserVeggieHistoryModelImpl &&
            (identical(other.veggieHistoryCount, veggieHistoryCount) ||
                other.veggieHistoryCount == veggieHistoryCount) &&
            const DeepCollectionEquality()
                .equals(other._veggieHistoryIcons, _veggieHistoryIcons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, veggieHistoryCount,
      const DeepCollectionEquality().hash(_veggieHistoryIcons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserVeggieHistoryModelImplCopyWith<_$UserVeggieHistoryModelImpl>
      get copyWith => __$$UserVeggieHistoryModelImplCopyWithImpl<
          _$UserVeggieHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserVeggieHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _UserVeggieHistoryModel implements UserVeggieHistoryModel {
  const factory _UserVeggieHistoryModel(
          {required final int veggieHistoryCount,
          required final List<VeggieHistoryIconModel> veggieHistoryIcons}) =
      _$UserVeggieHistoryModelImpl;

  factory _UserVeggieHistoryModel.fromJson(Map<String, dynamic> json) =
      _$UserVeggieHistoryModelImpl.fromJson;

  @override
  int get veggieHistoryCount;
  @override
  List<VeggieHistoryIconModel> get veggieHistoryIcons;
  @override
  @JsonKey(ignore: true)
  _$$UserVeggieHistoryModelImplCopyWith<_$UserVeggieHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
