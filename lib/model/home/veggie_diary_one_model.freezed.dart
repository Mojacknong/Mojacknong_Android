// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'veggie_diary_one_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VeggieDiaryOneModel _$VeggieDiaryOneModelFromJson(Map<String, dynamic> json) {
  return _VeggieDiaryModel.fromJson(json);
}

/// @nodoc
mixin _$VeggieDiaryOneModel {
  String? get image => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VeggieDiaryOneModelCopyWith<VeggieDiaryOneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VeggieDiaryOneModelCopyWith<$Res> {
  factory $VeggieDiaryOneModelCopyWith(
          VeggieDiaryOneModel value, $Res Function(VeggieDiaryOneModel) then) =
      _$VeggieDiaryOneModelCopyWithImpl<$Res, VeggieDiaryOneModel>;
  @useResult
  $Res call({String? image, String? content, String? date});
}

/// @nodoc
class _$VeggieDiaryOneModelCopyWithImpl<$Res, $Val extends VeggieDiaryOneModel>
    implements $VeggieDiaryOneModelCopyWith<$Res> {
  _$VeggieDiaryOneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? content = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VeggieDiaryModelImplCopyWith<$Res>
    implements $VeggieDiaryOneModelCopyWith<$Res> {
  factory _$$VeggieDiaryModelImplCopyWith(_$VeggieDiaryModelImpl value,
          $Res Function(_$VeggieDiaryModelImpl) then) =
      __$$VeggieDiaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String? content, String? date});
}

/// @nodoc
class __$$VeggieDiaryModelImplCopyWithImpl<$Res>
    extends _$VeggieDiaryOneModelCopyWithImpl<$Res, _$VeggieDiaryModelImpl>
    implements _$$VeggieDiaryModelImplCopyWith<$Res> {
  __$$VeggieDiaryModelImplCopyWithImpl(_$VeggieDiaryModelImpl _value,
      $Res Function(_$VeggieDiaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? content = freezed,
    Object? date = freezed,
  }) {
    return _then(_$VeggieDiaryModelImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VeggieDiaryModelImpl implements _VeggieDiaryModel {
  const _$VeggieDiaryModelImpl({this.image, this.content, this.date});

  factory _$VeggieDiaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VeggieDiaryModelImplFromJson(json);

  @override
  final String? image;
  @override
  final String? content;
  @override
  final String? date;

  @override
  String toString() {
    return 'VeggieDiaryOneModel(image: $image, content: $content, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VeggieDiaryModelImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, content, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VeggieDiaryModelImplCopyWith<_$VeggieDiaryModelImpl> get copyWith =>
      __$$VeggieDiaryModelImplCopyWithImpl<_$VeggieDiaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VeggieDiaryModelImplToJson(
      this,
    );
  }
}

abstract class _VeggieDiaryModel implements VeggieDiaryOneModel {
  const factory _VeggieDiaryModel(
      {final String? image,
      final String? content,
      final String? date}) = _$VeggieDiaryModelImpl;

  factory _VeggieDiaryModel.fromJson(Map<String, dynamic> json) =
      _$VeggieDiaryModelImpl.fromJson;

  @override
  String? get image;
  @override
  String? get content;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$VeggieDiaryModelImplCopyWith<_$VeggieDiaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
