// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'veggie_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VeggieInfoModel _$VeggieInfoModelFromJson(Map<String, dynamic> json) {
  return _VeggieInfoModel.fromJson(json);
}

/// @nodoc
mixin _$VeggieInfoModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get veggieImage => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VeggieInfoModelCopyWith<VeggieInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VeggieInfoModelCopyWith<$Res> {
  factory $VeggieInfoModelCopyWith(
          VeggieInfoModel value, $Res Function(VeggieInfoModel) then) =
      _$VeggieInfoModelCopyWithImpl<$Res, VeggieInfoModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String difficulty,
      String veggieImage,
      String period});
}

/// @nodoc
class _$VeggieInfoModelCopyWithImpl<$Res, $Val extends VeggieInfoModel>
    implements $VeggieInfoModelCopyWith<$Res> {
  _$VeggieInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? difficulty = null,
    Object? veggieImage = null,
    Object? period = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      veggieImage: null == veggieImage
          ? _value.veggieImage
          : veggieImage // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VeggieInfoModelImplCopyWith<$Res>
    implements $VeggieInfoModelCopyWith<$Res> {
  factory _$$VeggieInfoModelImplCopyWith(_$VeggieInfoModelImpl value,
          $Res Function(_$VeggieInfoModelImpl) then) =
      __$$VeggieInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String difficulty,
      String veggieImage,
      String period});
}

/// @nodoc
class __$$VeggieInfoModelImplCopyWithImpl<$Res>
    extends _$VeggieInfoModelCopyWithImpl<$Res, _$VeggieInfoModelImpl>
    implements _$$VeggieInfoModelImplCopyWith<$Res> {
  __$$VeggieInfoModelImplCopyWithImpl(
      _$VeggieInfoModelImpl _value, $Res Function(_$VeggieInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? difficulty = null,
    Object? veggieImage = null,
    Object? period = null,
  }) {
    return _then(_$VeggieInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      veggieImage: null == veggieImage
          ? _value.veggieImage
          : veggieImage // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VeggieInfoModelImpl implements _VeggieInfoModel {
  _$VeggieInfoModelImpl(
      {required this.id,
      required this.name,
      required this.difficulty,
      required this.veggieImage,
      required this.period});

  factory _$VeggieInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VeggieInfoModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String difficulty;
  @override
  final String veggieImage;
  @override
  final String period;

  @override
  String toString() {
    return 'VeggieInfoModel(id: $id, name: $name, difficulty: $difficulty, veggieImage: $veggieImage, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VeggieInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.veggieImage, veggieImage) ||
                other.veggieImage == veggieImage) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, difficulty, veggieImage, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VeggieInfoModelImplCopyWith<_$VeggieInfoModelImpl> get copyWith =>
      __$$VeggieInfoModelImplCopyWithImpl<_$VeggieInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VeggieInfoModelImplToJson(
      this,
    );
  }
}

abstract class _VeggieInfoModel implements VeggieInfoModel {
  factory _VeggieInfoModel(
      {required final String id,
      required final String name,
      required final String difficulty,
      required final String veggieImage,
      required final String period}) = _$VeggieInfoModelImpl;

  factory _VeggieInfoModel.fromJson(Map<String, dynamic> json) =
      _$VeggieInfoModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get difficulty;
  @override
  String get veggieImage;
  @override
  String get period;
  @override
  @JsonKey(ignore: true)
  _$$VeggieInfoModelImplCopyWith<_$VeggieInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
