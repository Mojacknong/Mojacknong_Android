// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_farmclub_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFarmclubHistoryModel _$MyFarmclubHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _MyFarmclubHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$MyFarmclubHistoryModel {
  String get detailId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get historyName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyFarmclubHistoryModelCopyWith<MyFarmclubHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFarmclubHistoryModelCopyWith<$Res> {
  factory $MyFarmclubHistoryModelCopyWith(MyFarmclubHistoryModel value,
          $Res Function(MyFarmclubHistoryModel) then) =
      _$MyFarmclubHistoryModelCopyWithImpl<$Res, MyFarmclubHistoryModel>;
  @useResult
  $Res call(
      {String detailId,
      String image,
      String historyName,
      String name,
      String period});
}

/// @nodoc
class _$MyFarmclubHistoryModelCopyWithImpl<$Res,
        $Val extends MyFarmclubHistoryModel>
    implements $MyFarmclubHistoryModelCopyWith<$Res> {
  _$MyFarmclubHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
    Object? image = null,
    Object? historyName = null,
    Object? name = null,
    Object? period = null,
  }) {
    return _then(_value.copyWith(
      detailId: null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      historyName: null == historyName
          ? _value.historyName
          : historyName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyFarmclubHistoryModelImplCopyWith<$Res>
    implements $MyFarmclubHistoryModelCopyWith<$Res> {
  factory _$$MyFarmclubHistoryModelImplCopyWith(
          _$MyFarmclubHistoryModelImpl value,
          $Res Function(_$MyFarmclubHistoryModelImpl) then) =
      __$$MyFarmclubHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String detailId,
      String image,
      String historyName,
      String name,
      String period});
}

/// @nodoc
class __$$MyFarmclubHistoryModelImplCopyWithImpl<$Res>
    extends _$MyFarmclubHistoryModelCopyWithImpl<$Res,
        _$MyFarmclubHistoryModelImpl>
    implements _$$MyFarmclubHistoryModelImplCopyWith<$Res> {
  __$$MyFarmclubHistoryModelImplCopyWithImpl(
      _$MyFarmclubHistoryModelImpl _value,
      $Res Function(_$MyFarmclubHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
    Object? image = null,
    Object? historyName = null,
    Object? name = null,
    Object? period = null,
  }) {
    return _then(_$MyFarmclubHistoryModelImpl(
      detailId: null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      historyName: null == historyName
          ? _value.historyName
          : historyName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$MyFarmclubHistoryModelImpl implements _MyFarmclubHistoryModel {
  const _$MyFarmclubHistoryModelImpl(
      {required this.detailId,
      required this.image,
      required this.historyName,
      required this.name,
      required this.period});

  factory _$MyFarmclubHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyFarmclubHistoryModelImplFromJson(json);

  @override
  final String detailId;
  @override
  final String image;
  @override
  final String historyName;
  @override
  final String name;
  @override
  final String period;

  @override
  String toString() {
    return 'MyFarmclubHistoryModel(detailId: $detailId, image: $image, historyName: $historyName, name: $name, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFarmclubHistoryModelImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.historyName, historyName) ||
                other.historyName == historyName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, detailId, image, historyName, name, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFarmclubHistoryModelImplCopyWith<_$MyFarmclubHistoryModelImpl>
      get copyWith => __$$MyFarmclubHistoryModelImplCopyWithImpl<
          _$MyFarmclubHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFarmclubHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _MyFarmclubHistoryModel implements MyFarmclubHistoryModel {
  const factory _MyFarmclubHistoryModel(
      {required final String detailId,
      required final String image,
      required final String historyName,
      required final String name,
      required final String period}) = _$MyFarmclubHistoryModelImpl;

  factory _MyFarmclubHistoryModel.fromJson(Map<String, dynamic> json) =
      _$MyFarmclubHistoryModelImpl.fromJson;

  @override
  String get detailId;
  @override
  String get image;
  @override
  String get historyName;
  @override
  String get name;
  @override
  String get period;
  @override
  @JsonKey(ignore: true)
  _$$MyFarmclubHistoryModelImplCopyWith<_$MyFarmclubHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
