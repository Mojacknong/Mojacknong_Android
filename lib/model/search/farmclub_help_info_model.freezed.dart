// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farmclub_help_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FarmclubHelpInfoModel _$FarmclubHelpInfoModelFromJson(
    Map<String, dynamic> json) {
  return _FarmclubHelpInfoModel.fromJson(json);
}

/// @nodoc
mixin _$FarmclubHelpInfoModel {
  String get material => throw _privateConstructorUsedError;
  List<String> get selectHow => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;

  /// Serializes this FarmclubHelpInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FarmclubHelpInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FarmclubHelpInfoModelCopyWith<FarmclubHelpInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmclubHelpInfoModelCopyWith<$Res> {
  factory $FarmclubHelpInfoModelCopyWith(FarmclubHelpInfoModel value,
          $Res Function(FarmclubHelpInfoModel) then) =
      _$FarmclubHelpInfoModelCopyWithImpl<$Res, FarmclubHelpInfoModel>;
  @useResult
  $Res call({String material, List<String> selectHow, List<String> features});
}

/// @nodoc
class _$FarmclubHelpInfoModelCopyWithImpl<$Res,
        $Val extends FarmclubHelpInfoModel>
    implements $FarmclubHelpInfoModelCopyWith<$Res> {
  _$FarmclubHelpInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmclubHelpInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? material = null,
    Object? selectHow = null,
    Object? features = null,
  }) {
    return _then(_value.copyWith(
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      selectHow: null == selectHow
          ? _value.selectHow
          : selectHow // ignore: cast_nullable_to_non_nullable
              as List<String>,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmclubHelpInfoModelImplCopyWith<$Res>
    implements $FarmclubHelpInfoModelCopyWith<$Res> {
  factory _$$FarmclubHelpInfoModelImplCopyWith(
          _$FarmclubHelpInfoModelImpl value,
          $Res Function(_$FarmclubHelpInfoModelImpl) then) =
      __$$FarmclubHelpInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String material, List<String> selectHow, List<String> features});
}

/// @nodoc
class __$$FarmclubHelpInfoModelImplCopyWithImpl<$Res>
    extends _$FarmclubHelpInfoModelCopyWithImpl<$Res,
        _$FarmclubHelpInfoModelImpl>
    implements _$$FarmclubHelpInfoModelImplCopyWith<$Res> {
  __$$FarmclubHelpInfoModelImplCopyWithImpl(_$FarmclubHelpInfoModelImpl _value,
      $Res Function(_$FarmclubHelpInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FarmclubHelpInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? material = null,
    Object? selectHow = null,
    Object? features = null,
  }) {
    return _then(_$FarmclubHelpInfoModelImpl(
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      selectHow: null == selectHow
          ? _value._selectHow
          : selectHow // ignore: cast_nullable_to_non_nullable
              as List<String>,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmclubHelpInfoModelImpl implements _FarmclubHelpInfoModel {
  const _$FarmclubHelpInfoModelImpl(
      {required this.material,
      required final List<String> selectHow,
      required final List<String> features})
      : _selectHow = selectHow,
        _features = features;

  factory _$FarmclubHelpInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmclubHelpInfoModelImplFromJson(json);

  @override
  final String material;
  final List<String> _selectHow;
  @override
  List<String> get selectHow {
    if (_selectHow is EqualUnmodifiableListView) return _selectHow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectHow);
  }

  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  String toString() {
    return 'FarmclubHelpInfoModel(material: $material, selectHow: $selectHow, features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmclubHelpInfoModelImpl &&
            (identical(other.material, material) ||
                other.material == material) &&
            const DeepCollectionEquality()
                .equals(other._selectHow, _selectHow) &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      material,
      const DeepCollectionEquality().hash(_selectHow),
      const DeepCollectionEquality().hash(_features));

  /// Create a copy of FarmclubHelpInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmclubHelpInfoModelImplCopyWith<_$FarmclubHelpInfoModelImpl>
      get copyWith => __$$FarmclubHelpInfoModelImplCopyWithImpl<
          _$FarmclubHelpInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmclubHelpInfoModelImplToJson(
      this,
    );
  }
}

abstract class _FarmclubHelpInfoModel implements FarmclubHelpInfoModel {
  const factory _FarmclubHelpInfoModel(
      {required final String material,
      required final List<String> selectHow,
      required final List<String> features}) = _$FarmclubHelpInfoModelImpl;

  factory _FarmclubHelpInfoModel.fromJson(Map<String, dynamic> json) =
      _$FarmclubHelpInfoModelImpl.fromJson;

  @override
  String get material;
  @override
  List<String> get selectHow;
  @override
  List<String> get features;

  /// Create a copy of FarmclubHelpInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmclubHelpInfoModelImplCopyWith<_$FarmclubHelpInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
