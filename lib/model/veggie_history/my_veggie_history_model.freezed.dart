// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_veggie_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyVeggieHistoryModel _$MyVeggieHistoryModelFromJson(Map<String, dynamic> json) {
  return _MyVeggieHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$MyVeggieHistoryModel {
  String get detailId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get historyName => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;

  /// Serializes this MyVeggieHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyVeggieHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyVeggieHistoryModelCopyWith<MyVeggieHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVeggieHistoryModelCopyWith<$Res> {
  factory $MyVeggieHistoryModelCopyWith(MyVeggieHistoryModel value,
          $Res Function(MyVeggieHistoryModel) then) =
      _$MyVeggieHistoryModelCopyWithImpl<$Res, MyVeggieHistoryModel>;
  @useResult
  $Res call(
      {String detailId,
      String image,
      String historyName,
      String backgroundColor,
      String name,
      String period});
}

/// @nodoc
class _$MyVeggieHistoryModelCopyWithImpl<$Res,
        $Val extends MyVeggieHistoryModel>
    implements $MyVeggieHistoryModelCopyWith<$Res> {
  _$MyVeggieHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyVeggieHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
    Object? image = null,
    Object? historyName = null,
    Object? backgroundColor = null,
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
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MyVeggieHistoryModelImplCopyWith<$Res>
    implements $MyVeggieHistoryModelCopyWith<$Res> {
  factory _$$MyVeggieHistoryModelImplCopyWith(_$MyVeggieHistoryModelImpl value,
          $Res Function(_$MyVeggieHistoryModelImpl) then) =
      __$$MyVeggieHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String detailId,
      String image,
      String historyName,
      String backgroundColor,
      String name,
      String period});
}

/// @nodoc
class __$$MyVeggieHistoryModelImplCopyWithImpl<$Res>
    extends _$MyVeggieHistoryModelCopyWithImpl<$Res, _$MyVeggieHistoryModelImpl>
    implements _$$MyVeggieHistoryModelImplCopyWith<$Res> {
  __$$MyVeggieHistoryModelImplCopyWithImpl(_$MyVeggieHistoryModelImpl _value,
      $Res Function(_$MyVeggieHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyVeggieHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
    Object? image = null,
    Object? historyName = null,
    Object? backgroundColor = null,
    Object? name = null,
    Object? period = null,
  }) {
    return _then(_$MyVeggieHistoryModelImpl(
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
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
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
class _$MyVeggieHistoryModelImpl implements _MyVeggieHistoryModel {
  const _$MyVeggieHistoryModelImpl(
      {required this.detailId,
      required this.image,
      required this.historyName,
      required this.backgroundColor,
      required this.name,
      required this.period});

  factory _$MyVeggieHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyVeggieHistoryModelImplFromJson(json);

  @override
  final String detailId;
  @override
  final String image;
  @override
  final String historyName;
  @override
  final String backgroundColor;
  @override
  final String name;
  @override
  final String period;

  @override
  String toString() {
    return 'MyVeggieHistoryModel(detailId: $detailId, image: $image, historyName: $historyName, backgroundColor: $backgroundColor, name: $name, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyVeggieHistoryModelImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.historyName, historyName) ||
                other.historyName == historyName) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, detailId, image, historyName, backgroundColor, name, period);

  /// Create a copy of MyVeggieHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyVeggieHistoryModelImplCopyWith<_$MyVeggieHistoryModelImpl>
      get copyWith =>
          __$$MyVeggieHistoryModelImplCopyWithImpl<_$MyVeggieHistoryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyVeggieHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _MyVeggieHistoryModel implements MyVeggieHistoryModel {
  const factory _MyVeggieHistoryModel(
      {required final String detailId,
      required final String image,
      required final String historyName,
      required final String backgroundColor,
      required final String name,
      required final String period}) = _$MyVeggieHistoryModelImpl;

  factory _MyVeggieHistoryModel.fromJson(Map<String, dynamic> json) =
      _$MyVeggieHistoryModelImpl.fromJson;

  @override
  String get detailId;
  @override
  String get image;
  @override
  String get historyName;
  @override
  String get backgroundColor;
  @override
  String get name;
  @override
  String get period;

  /// Create a copy of MyVeggieHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyVeggieHistoryModelImplCopyWith<_$MyVeggieHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
