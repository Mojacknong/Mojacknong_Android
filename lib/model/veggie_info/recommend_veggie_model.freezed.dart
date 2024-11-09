// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommend_veggie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecommendVeggieModel _$RecommendVeggieModelFromJson(Map<String, dynamic> json) {
  return _RecommendVeggieModel.fromJson(json);
}

/// @nodoc
mixin _$RecommendVeggieModel {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;

  /// Serializes this RecommendVeggieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendVeggieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendVeggieModelCopyWith<RecommendVeggieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendVeggieModelCopyWith<$Res> {
  factory $RecommendVeggieModelCopyWith(RecommendVeggieModel value,
          $Res Function(RecommendVeggieModel) then) =
      _$RecommendVeggieModelCopyWithImpl<$Res, RecommendVeggieModel>;
  @useResult
  $Res call({String image, String name, String difficulty, String period});
}

/// @nodoc
class _$RecommendVeggieModelCopyWithImpl<$Res,
        $Val extends RecommendVeggieModel>
    implements $RecommendVeggieModelCopyWith<$Res> {
  _$RecommendVeggieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendVeggieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? difficulty = null,
    Object? period = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendVeggieModelImplCopyWith<$Res>
    implements $RecommendVeggieModelCopyWith<$Res> {
  factory _$$RecommendVeggieModelImplCopyWith(_$RecommendVeggieModelImpl value,
          $Res Function(_$RecommendVeggieModelImpl) then) =
      __$$RecommendVeggieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String name, String difficulty, String period});
}

/// @nodoc
class __$$RecommendVeggieModelImplCopyWithImpl<$Res>
    extends _$RecommendVeggieModelCopyWithImpl<$Res, _$RecommendVeggieModelImpl>
    implements _$$RecommendVeggieModelImplCopyWith<$Res> {
  __$$RecommendVeggieModelImplCopyWithImpl(_$RecommendVeggieModelImpl _value,
      $Res Function(_$RecommendVeggieModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendVeggieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? difficulty = null,
    Object? period = null,
  }) {
    return _then(_$RecommendVeggieModelImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
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
class _$RecommendVeggieModelImpl implements _RecommendVeggieModel {
  _$RecommendVeggieModelImpl(
      {required this.image,
      required this.name,
      required this.difficulty,
      required this.period});

  factory _$RecommendVeggieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendVeggieModelImplFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String difficulty;
  @override
  final String period;

  @override
  String toString() {
    return 'RecommendVeggieModel(image: $image, name: $name, difficulty: $difficulty, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendVeggieModelImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, name, difficulty, period);

  /// Create a copy of RecommendVeggieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendVeggieModelImplCopyWith<_$RecommendVeggieModelImpl>
      get copyWith =>
          __$$RecommendVeggieModelImplCopyWithImpl<_$RecommendVeggieModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendVeggieModelImplToJson(
      this,
    );
  }
}

abstract class _RecommendVeggieModel implements RecommendVeggieModel {
  factory _RecommendVeggieModel(
      {required final String image,
      required final String name,
      required final String difficulty,
      required final String period}) = _$RecommendVeggieModelImpl;

  factory _RecommendVeggieModel.fromJson(Map<String, dynamic> json) =
      _$RecommendVeggieModelImpl.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  String get difficulty;
  @override
  String get period;

  /// Create a copy of RecommendVeggieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendVeggieModelImplCopyWith<_$RecommendVeggieModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
