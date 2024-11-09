// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_farmclub_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyFarmclubModel _$MyFarmclubModelFromJson(Map<String, dynamic> json) {
  return _MyFarmclubModel.fromJson(json);
}

/// @nodoc
mixin _$MyFarmclubModel {
  int get farmClubId => throw _privateConstructorUsedError;
  String get farmClubImage => throw _privateConstructorUsedError;
  String get farmClubName => throw _privateConstructorUsedError;
  String get veggieName => throw _privateConstructorUsedError;

  /// Serializes this MyFarmclubModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyFarmclubModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyFarmclubModelCopyWith<MyFarmclubModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFarmclubModelCopyWith<$Res> {
  factory $MyFarmclubModelCopyWith(
          MyFarmclubModel value, $Res Function(MyFarmclubModel) then) =
      _$MyFarmclubModelCopyWithImpl<$Res, MyFarmclubModel>;
  @useResult
  $Res call(
      {int farmClubId,
      String farmClubImage,
      String farmClubName,
      String veggieName});
}

/// @nodoc
class _$MyFarmclubModelCopyWithImpl<$Res, $Val extends MyFarmclubModel>
    implements $MyFarmclubModelCopyWith<$Res> {
  _$MyFarmclubModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyFarmclubModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmClubId = null,
    Object? farmClubImage = null,
    Object? farmClubName = null,
    Object? veggieName = null,
  }) {
    return _then(_value.copyWith(
      farmClubId: null == farmClubId
          ? _value.farmClubId
          : farmClubId // ignore: cast_nullable_to_non_nullable
              as int,
      farmClubImage: null == farmClubImage
          ? _value.farmClubImage
          : farmClubImage // ignore: cast_nullable_to_non_nullable
              as String,
      farmClubName: null == farmClubName
          ? _value.farmClubName
          : farmClubName // ignore: cast_nullable_to_non_nullable
              as String,
      veggieName: null == veggieName
          ? _value.veggieName
          : veggieName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyFarmclubModelImplCopyWith<$Res>
    implements $MyFarmclubModelCopyWith<$Res> {
  factory _$$MyFarmclubModelImplCopyWith(_$MyFarmclubModelImpl value,
          $Res Function(_$MyFarmclubModelImpl) then) =
      __$$MyFarmclubModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int farmClubId,
      String farmClubImage,
      String farmClubName,
      String veggieName});
}

/// @nodoc
class __$$MyFarmclubModelImplCopyWithImpl<$Res>
    extends _$MyFarmclubModelCopyWithImpl<$Res, _$MyFarmclubModelImpl>
    implements _$$MyFarmclubModelImplCopyWith<$Res> {
  __$$MyFarmclubModelImplCopyWithImpl(
      _$MyFarmclubModelImpl _value, $Res Function(_$MyFarmclubModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyFarmclubModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmClubId = null,
    Object? farmClubImage = null,
    Object? farmClubName = null,
    Object? veggieName = null,
  }) {
    return _then(_$MyFarmclubModelImpl(
      farmClubId: null == farmClubId
          ? _value.farmClubId
          : farmClubId // ignore: cast_nullable_to_non_nullable
              as int,
      farmClubImage: null == farmClubImage
          ? _value.farmClubImage
          : farmClubImage // ignore: cast_nullable_to_non_nullable
              as String,
      farmClubName: null == farmClubName
          ? _value.farmClubName
          : farmClubName // ignore: cast_nullable_to_non_nullable
              as String,
      veggieName: null == veggieName
          ? _value.veggieName
          : veggieName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyFarmclubModelImpl implements _MyFarmclubModel {
  const _$MyFarmclubModelImpl(
      {required this.farmClubId,
      required this.farmClubImage,
      required this.farmClubName,
      required this.veggieName});

  factory _$MyFarmclubModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyFarmclubModelImplFromJson(json);

  @override
  final int farmClubId;
  @override
  final String farmClubImage;
  @override
  final String farmClubName;
  @override
  final String veggieName;

  @override
  String toString() {
    return 'MyFarmclubModel(farmClubId: $farmClubId, farmClubImage: $farmClubImage, farmClubName: $farmClubName, veggieName: $veggieName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFarmclubModelImpl &&
            (identical(other.farmClubId, farmClubId) ||
                other.farmClubId == farmClubId) &&
            (identical(other.farmClubImage, farmClubImage) ||
                other.farmClubImage == farmClubImage) &&
            (identical(other.farmClubName, farmClubName) ||
                other.farmClubName == farmClubName) &&
            (identical(other.veggieName, veggieName) ||
                other.veggieName == veggieName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, farmClubId, farmClubImage, farmClubName, veggieName);

  /// Create a copy of MyFarmclubModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFarmclubModelImplCopyWith<_$MyFarmclubModelImpl> get copyWith =>
      __$$MyFarmclubModelImplCopyWithImpl<_$MyFarmclubModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFarmclubModelImplToJson(
      this,
    );
  }
}

abstract class _MyFarmclubModel implements MyFarmclubModel {
  const factory _MyFarmclubModel(
      {required final int farmClubId,
      required final String farmClubImage,
      required final String farmClubName,
      required final String veggieName}) = _$MyFarmclubModelImpl;

  factory _MyFarmclubModel.fromJson(Map<String, dynamic> json) =
      _$MyFarmclubModelImpl.fromJson;

  @override
  int get farmClubId;
  @override
  String get farmClubImage;
  @override
  String get farmClubName;
  @override
  String get veggieName;

  /// Create a copy of MyFarmclubModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyFarmclubModelImplCopyWith<_$MyFarmclubModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
