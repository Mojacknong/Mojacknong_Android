// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_farmclubs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecommendedFarmclubsModel _$RecommendedFarmclubsModelFromJson(
    Map<String, dynamic> json) {
  return _RecommendedFarmclubsModel.fromJson(json);
}

/// @nodoc
mixin _$RecommendedFarmclubsModel {
  SearchFarmclubDetailModel get recFirst => throw _privateConstructorUsedError;
  SearchFarmclubDetailModel get recSecond => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendedFarmclubsModelCopyWith<RecommendedFarmclubsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedFarmclubsModelCopyWith<$Res> {
  factory $RecommendedFarmclubsModelCopyWith(RecommendedFarmclubsModel value,
          $Res Function(RecommendedFarmclubsModel) then) =
      _$RecommendedFarmclubsModelCopyWithImpl<$Res, RecommendedFarmclubsModel>;
  @useResult
  $Res call(
      {SearchFarmclubDetailModel recFirst,
      SearchFarmclubDetailModel recSecond});

  $SearchFarmclubDetailModelCopyWith<$Res> get recFirst;
  $SearchFarmclubDetailModelCopyWith<$Res> get recSecond;
}

/// @nodoc
class _$RecommendedFarmclubsModelCopyWithImpl<$Res,
        $Val extends RecommendedFarmclubsModel>
    implements $RecommendedFarmclubsModelCopyWith<$Res> {
  _$RecommendedFarmclubsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recFirst = null,
    Object? recSecond = null,
  }) {
    return _then(_value.copyWith(
      recFirst: null == recFirst
          ? _value.recFirst
          : recFirst // ignore: cast_nullable_to_non_nullable
              as SearchFarmclubDetailModel,
      recSecond: null == recSecond
          ? _value.recSecond
          : recSecond // ignore: cast_nullable_to_non_nullable
              as SearchFarmclubDetailModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchFarmclubDetailModelCopyWith<$Res> get recFirst {
    return $SearchFarmclubDetailModelCopyWith<$Res>(_value.recFirst, (value) {
      return _then(_value.copyWith(recFirst: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchFarmclubDetailModelCopyWith<$Res> get recSecond {
    return $SearchFarmclubDetailModelCopyWith<$Res>(_value.recSecond, (value) {
      return _then(_value.copyWith(recSecond: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecommendedFarmclubsModelImplCopyWith<$Res>
    implements $RecommendedFarmclubsModelCopyWith<$Res> {
  factory _$$RecommendedFarmclubsModelImplCopyWith(
          _$RecommendedFarmclubsModelImpl value,
          $Res Function(_$RecommendedFarmclubsModelImpl) then) =
      __$$RecommendedFarmclubsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchFarmclubDetailModel recFirst,
      SearchFarmclubDetailModel recSecond});

  @override
  $SearchFarmclubDetailModelCopyWith<$Res> get recFirst;
  @override
  $SearchFarmclubDetailModelCopyWith<$Res> get recSecond;
}

/// @nodoc
class __$$RecommendedFarmclubsModelImplCopyWithImpl<$Res>
    extends _$RecommendedFarmclubsModelCopyWithImpl<$Res,
        _$RecommendedFarmclubsModelImpl>
    implements _$$RecommendedFarmclubsModelImplCopyWith<$Res> {
  __$$RecommendedFarmclubsModelImplCopyWithImpl(
      _$RecommendedFarmclubsModelImpl _value,
      $Res Function(_$RecommendedFarmclubsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recFirst = null,
    Object? recSecond = null,
  }) {
    return _then(_$RecommendedFarmclubsModelImpl(
      recFirst: null == recFirst
          ? _value.recFirst
          : recFirst // ignore: cast_nullable_to_non_nullable
              as SearchFarmclubDetailModel,
      recSecond: null == recSecond
          ? _value.recSecond
          : recSecond // ignore: cast_nullable_to_non_nullable
              as SearchFarmclubDetailModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendedFarmclubsModelImpl implements _RecommendedFarmclubsModel {
  _$RecommendedFarmclubsModelImpl(
      {required this.recFirst, required this.recSecond});

  factory _$RecommendedFarmclubsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendedFarmclubsModelImplFromJson(json);

  @override
  final SearchFarmclubDetailModel recFirst;
  @override
  final SearchFarmclubDetailModel recSecond;

  @override
  String toString() {
    return 'RecommendedFarmclubsModel(recFirst: $recFirst, recSecond: $recSecond)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedFarmclubsModelImpl &&
            (identical(other.recFirst, recFirst) ||
                other.recFirst == recFirst) &&
            (identical(other.recSecond, recSecond) ||
                other.recSecond == recSecond));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recFirst, recSecond);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedFarmclubsModelImplCopyWith<_$RecommendedFarmclubsModelImpl>
      get copyWith => __$$RecommendedFarmclubsModelImplCopyWithImpl<
          _$RecommendedFarmclubsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendedFarmclubsModelImplToJson(
      this,
    );
  }
}

abstract class _RecommendedFarmclubsModel implements RecommendedFarmclubsModel {
  factory _RecommendedFarmclubsModel(
          {required final SearchFarmclubDetailModel recFirst,
          required final SearchFarmclubDetailModel recSecond}) =
      _$RecommendedFarmclubsModelImpl;

  factory _RecommendedFarmclubsModel.fromJson(Map<String, dynamic> json) =
      _$RecommendedFarmclubsModelImpl.fromJson;

  @override
  SearchFarmclubDetailModel get recFirst;
  @override
  SearchFarmclubDetailModel get recSecond;
  @override
  @JsonKey(ignore: true)
  _$$RecommendedFarmclubsModelImplCopyWith<_$RecommendedFarmclubsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
