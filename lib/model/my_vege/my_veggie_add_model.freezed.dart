// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_veggie_add_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyVeggieAddModel _$MyVeggieAddModelFromJson(Map<String, dynamic> json) {
  return _MyVeggieAddModel.fromJson(json);
}

/// @nodoc
mixin _$MyVeggieAddModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get veggieImage => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyVeggieAddModelCopyWith<MyVeggieAddModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVeggieAddModelCopyWith<$Res> {
  factory $MyVeggieAddModelCopyWith(
          MyVeggieAddModel value, $Res Function(MyVeggieAddModel) then) =
      _$MyVeggieAddModelCopyWithImpl<$Res, MyVeggieAddModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String difficulty,
      String veggieImage,
      String period});
}

/// @nodoc
class _$MyVeggieAddModelCopyWithImpl<$Res, $Val extends MyVeggieAddModel>
    implements $MyVeggieAddModelCopyWith<$Res> {
  _$MyVeggieAddModelCopyWithImpl(this._value, this._then);

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
abstract class _$$MyVeggieAddModelImplCopyWith<$Res>
    implements $MyVeggieAddModelCopyWith<$Res> {
  factory _$$MyVeggieAddModelImplCopyWith(_$MyVeggieAddModelImpl value,
          $Res Function(_$MyVeggieAddModelImpl) then) =
      __$$MyVeggieAddModelImplCopyWithImpl<$Res>;
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
class __$$MyVeggieAddModelImplCopyWithImpl<$Res>
    extends _$MyVeggieAddModelCopyWithImpl<$Res, _$MyVeggieAddModelImpl>
    implements _$$MyVeggieAddModelImplCopyWith<$Res> {
  __$$MyVeggieAddModelImplCopyWithImpl(_$MyVeggieAddModelImpl _value,
      $Res Function(_$MyVeggieAddModelImpl) _then)
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
    return _then(_$MyVeggieAddModelImpl(
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
class _$MyVeggieAddModelImpl implements _MyVeggieAddModel {
  _$MyVeggieAddModelImpl(
      {required this.id,
      required this.name,
      required this.difficulty,
      required this.veggieImage,
      required this.period});

  factory _$MyVeggieAddModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyVeggieAddModelImplFromJson(json);

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
    return 'MyVeggieAddModel(id: $id, name: $name, difficulty: $difficulty, veggieImage: $veggieImage, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyVeggieAddModelImpl &&
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
  _$$MyVeggieAddModelImplCopyWith<_$MyVeggieAddModelImpl> get copyWith =>
      __$$MyVeggieAddModelImplCopyWithImpl<_$MyVeggieAddModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyVeggieAddModelImplToJson(
      this,
    );
  }
}

abstract class _MyVeggieAddModel implements MyVeggieAddModel {
  factory _MyVeggieAddModel(
      {required final String id,
      required final String name,
      required final String difficulty,
      required final String veggieImage,
      required final String period}) = _$MyVeggieAddModelImpl;

  factory _MyVeggieAddModel.fromJson(Map<String, dynamic> json) =
      _$MyVeggieAddModelImpl.fromJson;

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
  _$$MyVeggieAddModelImplCopyWith<_$MyVeggieAddModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
