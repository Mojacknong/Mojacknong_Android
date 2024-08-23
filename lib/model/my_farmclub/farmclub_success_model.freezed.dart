// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farmclub_success_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FarmclubSuccessModel _$FarmclubSuccessModelFromJson(Map<String, dynamic> json) {
  return _FarmclubSuccessModel.fromJson(json);
}

/// @nodoc
mixin _$FarmclubSuccessModel {
  String get farmClubName => throw _privateConstructorUsedError;
  String get veggieImage => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;
  int get diaryCount => throw _privateConstructorUsedError;
  int get missionPostCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmclubSuccessModelCopyWith<FarmclubSuccessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmclubSuccessModelCopyWith<$Res> {
  factory $FarmclubSuccessModelCopyWith(FarmclubSuccessModel value,
          $Res Function(FarmclubSuccessModel) then) =
      _$FarmclubSuccessModelCopyWithImpl<$Res, FarmclubSuccessModel>;
  @useResult
  $Res call(
      {String farmClubName,
      String veggieImage,
      int date,
      String period,
      int diaryCount,
      int missionPostCount});
}

/// @nodoc
class _$FarmclubSuccessModelCopyWithImpl<$Res,
        $Val extends FarmclubSuccessModel>
    implements $FarmclubSuccessModelCopyWith<$Res> {
  _$FarmclubSuccessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmClubName = null,
    Object? veggieImage = null,
    Object? date = null,
    Object? period = null,
    Object? diaryCount = null,
    Object? missionPostCount = null,
  }) {
    return _then(_value.copyWith(
      farmClubName: null == farmClubName
          ? _value.farmClubName
          : farmClubName // ignore: cast_nullable_to_non_nullable
              as String,
      veggieImage: null == veggieImage
          ? _value.veggieImage
          : veggieImage // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      diaryCount: null == diaryCount
          ? _value.diaryCount
          : diaryCount // ignore: cast_nullable_to_non_nullable
              as int,
      missionPostCount: null == missionPostCount
          ? _value.missionPostCount
          : missionPostCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmclubSuccessModelImplCopyWith<$Res>
    implements $FarmclubSuccessModelCopyWith<$Res> {
  factory _$$FarmclubSuccessModelImplCopyWith(_$FarmclubSuccessModelImpl value,
          $Res Function(_$FarmclubSuccessModelImpl) then) =
      __$$FarmclubSuccessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String farmClubName,
      String veggieImage,
      int date,
      String period,
      int diaryCount,
      int missionPostCount});
}

/// @nodoc
class __$$FarmclubSuccessModelImplCopyWithImpl<$Res>
    extends _$FarmclubSuccessModelCopyWithImpl<$Res, _$FarmclubSuccessModelImpl>
    implements _$$FarmclubSuccessModelImplCopyWith<$Res> {
  __$$FarmclubSuccessModelImplCopyWithImpl(_$FarmclubSuccessModelImpl _value,
      $Res Function(_$FarmclubSuccessModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmClubName = null,
    Object? veggieImage = null,
    Object? date = null,
    Object? period = null,
    Object? diaryCount = null,
    Object? missionPostCount = null,
  }) {
    return _then(_$FarmclubSuccessModelImpl(
      farmClubName: null == farmClubName
          ? _value.farmClubName
          : farmClubName // ignore: cast_nullable_to_non_nullable
              as String,
      veggieImage: null == veggieImage
          ? _value.veggieImage
          : veggieImage // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      diaryCount: null == diaryCount
          ? _value.diaryCount
          : diaryCount // ignore: cast_nullable_to_non_nullable
              as int,
      missionPostCount: null == missionPostCount
          ? _value.missionPostCount
          : missionPostCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmclubSuccessModelImpl implements _FarmclubSuccessModel {
  const _$FarmclubSuccessModelImpl(
      {required this.farmClubName,
      required this.veggieImage,
      required this.date,
      required this.period,
      required this.diaryCount,
      required this.missionPostCount});

  factory _$FarmclubSuccessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmclubSuccessModelImplFromJson(json);

  @override
  final String farmClubName;
  @override
  final String veggieImage;
  @override
  final int date;
  @override
  final String period;
  @override
  final int diaryCount;
  @override
  final int missionPostCount;

  @override
  String toString() {
    return 'FarmclubSuccessModel(farmClubName: $farmClubName, veggieImage: $veggieImage, date: $date, period: $period, diaryCount: $diaryCount, missionPostCount: $missionPostCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmclubSuccessModelImpl &&
            (identical(other.farmClubName, farmClubName) ||
                other.farmClubName == farmClubName) &&
            (identical(other.veggieImage, veggieImage) ||
                other.veggieImage == veggieImage) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.diaryCount, diaryCount) ||
                other.diaryCount == diaryCount) &&
            (identical(other.missionPostCount, missionPostCount) ||
                other.missionPostCount == missionPostCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, farmClubName, veggieImage, date,
      period, diaryCount, missionPostCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmclubSuccessModelImplCopyWith<_$FarmclubSuccessModelImpl>
      get copyWith =>
          __$$FarmclubSuccessModelImplCopyWithImpl<_$FarmclubSuccessModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmclubSuccessModelImplToJson(
      this,
    );
  }
}

abstract class _FarmclubSuccessModel implements FarmclubSuccessModel {
  const factory _FarmclubSuccessModel(
      {required final String farmClubName,
      required final String veggieImage,
      required final int date,
      required final String period,
      required final int diaryCount,
      required final int missionPostCount}) = _$FarmclubSuccessModelImpl;

  factory _FarmclubSuccessModel.fromJson(Map<String, dynamic> json) =
      _$FarmclubSuccessModelImpl.fromJson;

  @override
  String get farmClubName;
  @override
  String get veggieImage;
  @override
  int get date;
  @override
  String get period;
  @override
  int get diaryCount;
  @override
  int get missionPostCount;
  @override
  @JsonKey(ignore: true)
  _$$FarmclubSuccessModelImplCopyWith<_$FarmclubSuccessModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
