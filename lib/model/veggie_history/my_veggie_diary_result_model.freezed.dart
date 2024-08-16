// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_veggie_diary_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyVeggieDiaryResultModel _$MyVeggieDiaryResultModelFromJson(
    Map<String, dynamic> json) {
  return _MyVeggieDiaryResultModel.fromJson(json);
}

/// @nodoc
mixin _$MyVeggieDiaryResultModel {
  List<Diary> get diaries => throw _privateConstructorUsedError;
  FarmResult get farmResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyVeggieDiaryResultModelCopyWith<MyVeggieDiaryResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVeggieDiaryResultModelCopyWith<$Res> {
  factory $MyVeggieDiaryResultModelCopyWith(MyVeggieDiaryResultModel value,
          $Res Function(MyVeggieDiaryResultModel) then) =
      _$MyVeggieDiaryResultModelCopyWithImpl<$Res, MyVeggieDiaryResultModel>;
  @useResult
  $Res call({List<Diary> diaries, FarmResult farmResult});

  $FarmResultCopyWith<$Res> get farmResult;
}

/// @nodoc
class _$MyVeggieDiaryResultModelCopyWithImpl<$Res,
        $Val extends MyVeggieDiaryResultModel>
    implements $MyVeggieDiaryResultModelCopyWith<$Res> {
  _$MyVeggieDiaryResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaries = null,
    Object? farmResult = null,
  }) {
    return _then(_value.copyWith(
      diaries: null == diaries
          ? _value.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      farmResult: null == farmResult
          ? _value.farmResult
          : farmResult // ignore: cast_nullable_to_non_nullable
              as FarmResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FarmResultCopyWith<$Res> get farmResult {
    return $FarmResultCopyWith<$Res>(_value.farmResult, (value) {
      return _then(_value.copyWith(farmResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyVeggieDiaryResultModelImplCopyWith<$Res>
    implements $MyVeggieDiaryResultModelCopyWith<$Res> {
  factory _$$MyVeggieDiaryResultModelImplCopyWith(
          _$MyVeggieDiaryResultModelImpl value,
          $Res Function(_$MyVeggieDiaryResultModelImpl) then) =
      __$$MyVeggieDiaryResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Diary> diaries, FarmResult farmResult});

  @override
  $FarmResultCopyWith<$Res> get farmResult;
}

/// @nodoc
class __$$MyVeggieDiaryResultModelImplCopyWithImpl<$Res>
    extends _$MyVeggieDiaryResultModelCopyWithImpl<$Res,
        _$MyVeggieDiaryResultModelImpl>
    implements _$$MyVeggieDiaryResultModelImplCopyWith<$Res> {
  __$$MyVeggieDiaryResultModelImplCopyWithImpl(
      _$MyVeggieDiaryResultModelImpl _value,
      $Res Function(_$MyVeggieDiaryResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaries = null,
    Object? farmResult = null,
  }) {
    return _then(_$MyVeggieDiaryResultModelImpl(
      diaries: null == diaries
          ? _value._diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      farmResult: null == farmResult
          ? _value.farmResult
          : farmResult // ignore: cast_nullable_to_non_nullable
              as FarmResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyVeggieDiaryResultModelImpl implements _MyVeggieDiaryResultModel {
  const _$MyVeggieDiaryResultModelImpl(
      {required final List<Diary> diaries, required this.farmResult})
      : _diaries = diaries;

  factory _$MyVeggieDiaryResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyVeggieDiaryResultModelImplFromJson(json);

  final List<Diary> _diaries;
  @override
  List<Diary> get diaries {
    if (_diaries is EqualUnmodifiableListView) return _diaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diaries);
  }

  @override
  final FarmResult farmResult;

  @override
  String toString() {
    return 'MyVeggieDiaryResultModel(diaries: $diaries, farmResult: $farmResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyVeggieDiaryResultModelImpl &&
            const DeepCollectionEquality().equals(other._diaries, _diaries) &&
            (identical(other.farmResult, farmResult) ||
                other.farmResult == farmResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_diaries), farmResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyVeggieDiaryResultModelImplCopyWith<_$MyVeggieDiaryResultModelImpl>
      get copyWith => __$$MyVeggieDiaryResultModelImplCopyWithImpl<
          _$MyVeggieDiaryResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyVeggieDiaryResultModelImplToJson(
      this,
    );
  }
}

abstract class _MyVeggieDiaryResultModel implements MyVeggieDiaryResultModel {
  const factory _MyVeggieDiaryResultModel(
      {required final List<Diary> diaries,
      required final FarmResult farmResult}) = _$MyVeggieDiaryResultModelImpl;

  factory _MyVeggieDiaryResultModel.fromJson(Map<String, dynamic> json) =
      _$MyVeggieDiaryResultModelImpl.fromJson;

  @override
  List<Diary> get diaries;
  @override
  FarmResult get farmResult;
  @override
  @JsonKey(ignore: true)
  _$$MyVeggieDiaryResultModelImplCopyWith<_$MyVeggieDiaryResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Diary _$DiaryFromJson(Map<String, dynamic> json) {
  return _Diary.fromJson(json);
}

/// @nodoc
mixin _$Diary {
  String get postImage => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryCopyWith<Diary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCopyWith<$Res> {
  factory $DiaryCopyWith(Diary value, $Res Function(Diary) then) =
      _$DiaryCopyWithImpl<$Res, Diary>;
  @useResult
  $Res call({String postImage, String content, String dateTime});
}

/// @nodoc
class _$DiaryCopyWithImpl<$Res, $Val extends Diary>
    implements $DiaryCopyWith<$Res> {
  _$DiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = null,
    Object? content = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      postImage: null == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiaryImplCopyWith<$Res> implements $DiaryCopyWith<$Res> {
  factory _$$DiaryImplCopyWith(
          _$DiaryImpl value, $Res Function(_$DiaryImpl) then) =
      __$$DiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postImage, String content, String dateTime});
}

/// @nodoc
class __$$DiaryImplCopyWithImpl<$Res>
    extends _$DiaryCopyWithImpl<$Res, _$DiaryImpl>
    implements _$$DiaryImplCopyWith<$Res> {
  __$$DiaryImplCopyWithImpl(
      _$DiaryImpl _value, $Res Function(_$DiaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = null,
    Object? content = null,
    Object? dateTime = null,
  }) {
    return _then(_$DiaryImpl(
      postImage: null == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiaryImpl implements _Diary {
  const _$DiaryImpl(
      {required this.postImage, required this.content, required this.dateTime});

  factory _$DiaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiaryImplFromJson(json);

  @override
  final String postImage;
  @override
  final String content;
  @override
  final String dateTime;

  @override
  String toString() {
    return 'Diary(postImage: $postImage, content: $content, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryImpl &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postImage, content, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryImplCopyWith<_$DiaryImpl> get copyWith =>
      __$$DiaryImplCopyWithImpl<_$DiaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiaryImplToJson(
      this,
    );
  }
}

abstract class _Diary implements Diary {
  const factory _Diary(
      {required final String postImage,
      required final String content,
      required final String dateTime}) = _$DiaryImpl;

  factory _Diary.fromJson(Map<String, dynamic> json) = _$DiaryImpl.fromJson;

  @override
  String get postImage;
  @override
  String get content;
  @override
  String get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$DiaryImplCopyWith<_$DiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FarmResult _$FarmResultFromJson(Map<String, dynamic> json) {
  return _FarmResult.fromJson(json);
}

/// @nodoc
mixin _$FarmResult {
  String get postImage => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmResultCopyWith<FarmResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmResultCopyWith<$Res> {
  factory $FarmResultCopyWith(
          FarmResult value, $Res Function(FarmResult) then) =
      _$FarmResultCopyWithImpl<$Res, FarmResult>;
  @useResult
  $Res call({String postImage, String content, String dateTime});
}

/// @nodoc
class _$FarmResultCopyWithImpl<$Res, $Val extends FarmResult>
    implements $FarmResultCopyWith<$Res> {
  _$FarmResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = null,
    Object? content = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      postImage: null == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmResultImplCopyWith<$Res>
    implements $FarmResultCopyWith<$Res> {
  factory _$$FarmResultImplCopyWith(
          _$FarmResultImpl value, $Res Function(_$FarmResultImpl) then) =
      __$$FarmResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postImage, String content, String dateTime});
}

/// @nodoc
class __$$FarmResultImplCopyWithImpl<$Res>
    extends _$FarmResultCopyWithImpl<$Res, _$FarmResultImpl>
    implements _$$FarmResultImplCopyWith<$Res> {
  __$$FarmResultImplCopyWithImpl(
      _$FarmResultImpl _value, $Res Function(_$FarmResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = null,
    Object? content = null,
    Object? dateTime = null,
  }) {
    return _then(_$FarmResultImpl(
      postImage: null == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmResultImpl implements _FarmResult {
  const _$FarmResultImpl(
      {required this.postImage, required this.content, required this.dateTime});

  factory _$FarmResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmResultImplFromJson(json);

  @override
  final String postImage;
  @override
  final String content;
  @override
  final String dateTime;

  @override
  String toString() {
    return 'FarmResult(postImage: $postImage, content: $content, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmResultImpl &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postImage, content, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmResultImplCopyWith<_$FarmResultImpl> get copyWith =>
      __$$FarmResultImplCopyWithImpl<_$FarmResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmResultImplToJson(
      this,
    );
  }
}

abstract class _FarmResult implements FarmResult {
  const factory _FarmResult(
      {required final String postImage,
      required final String content,
      required final String dateTime}) = _$FarmResultImpl;

  factory _FarmResult.fromJson(Map<String, dynamic> json) =
      _$FarmResultImpl.fromJson;

  @override
  String get postImage;
  @override
  String get content;
  @override
  String get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$FarmResultImplCopyWith<_$FarmResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
