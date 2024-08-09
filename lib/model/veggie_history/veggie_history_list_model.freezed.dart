// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'veggie_history_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VeggieHistoryListModel _$VeggieHistoryListModelFromJson(
    Map<String, dynamic> json) {
  return _VeggieHistoryListModel.fromJson(json);
}

/// @nodoc
mixin _$VeggieHistoryListModel {
  String get detailId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get historyName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VeggieHistoryListModelCopyWith<VeggieHistoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VeggieHistoryListModelCopyWith<$Res> {
  factory $VeggieHistoryListModelCopyWith(VeggieHistoryListModel value,
          $Res Function(VeggieHistoryListModel) then) =
      _$VeggieHistoryListModelCopyWithImpl<$Res, VeggieHistoryListModel>;
  @useResult
  $Res call(
      {String detailId,
      String image,
      String historyName,
      String name,
      String period});
}

/// @nodoc
class _$VeggieHistoryListModelCopyWithImpl<$Res,
        $Val extends VeggieHistoryListModel>
    implements $VeggieHistoryListModelCopyWith<$Res> {
  _$VeggieHistoryListModelCopyWithImpl(this._value, this._then);

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
abstract class _$$VeggieHistoryListModelImplCopyWith<$Res>
    implements $VeggieHistoryListModelCopyWith<$Res> {
  factory _$$VeggieHistoryListModelImplCopyWith(
          _$VeggieHistoryListModelImpl value,
          $Res Function(_$VeggieHistoryListModelImpl) then) =
      __$$VeggieHistoryListModelImplCopyWithImpl<$Res>;
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
class __$$VeggieHistoryListModelImplCopyWithImpl<$Res>
    extends _$VeggieHistoryListModelCopyWithImpl<$Res,
        _$VeggieHistoryListModelImpl>
    implements _$$VeggieHistoryListModelImplCopyWith<$Res> {
  __$$VeggieHistoryListModelImplCopyWithImpl(
      _$VeggieHistoryListModelImpl _value,
      $Res Function(_$VeggieHistoryListModelImpl) _then)
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
    return _then(_$VeggieHistoryListModelImpl(
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
class _$VeggieHistoryListModelImpl implements _VeggieHistoryListModel {
  const _$VeggieHistoryListModelImpl(
      {required this.detailId,
      required this.image,
      required this.historyName,
      required this.name,
      required this.period});

  factory _$VeggieHistoryListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VeggieHistoryListModelImplFromJson(json);

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
    return 'VeggieHistoryListModel(detailId: $detailId, image: $image, historyName: $historyName, name: $name, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VeggieHistoryListModelImpl &&
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
  _$$VeggieHistoryListModelImplCopyWith<_$VeggieHistoryListModelImpl>
      get copyWith => __$$VeggieHistoryListModelImplCopyWithImpl<
          _$VeggieHistoryListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VeggieHistoryListModelImplToJson(
      this,
    );
  }
}

abstract class _VeggieHistoryListModel implements VeggieHistoryListModel {
  const factory _VeggieHistoryListModel(
      {required final String detailId,
      required final String image,
      required final String historyName,
      required final String name,
      required final String period}) = _$VeggieHistoryListModelImpl;

  factory _VeggieHistoryListModel.fromJson(Map<String, dynamic> json) =
      _$VeggieHistoryListModelImpl.fromJson;

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
  _$$VeggieHistoryListModelImplCopyWith<_$VeggieHistoryListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
