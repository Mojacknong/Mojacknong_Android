// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_veggie_diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyVeggieDiary _$MyVeggieDiaryFromJson(Map<String, dynamic> json) {
  return _MyVeggieDiary.fromJson(json);
}

/// @nodoc
mixin _$MyVeggieDiary {
  String get date => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyVeggieDiaryCopyWith<MyVeggieDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVeggieDiaryCopyWith<$Res> {
  factory $MyVeggieDiaryCopyWith(
          MyVeggieDiary value, $Res Function(MyVeggieDiary) then) =
      _$MyVeggieDiaryCopyWithImpl<$Res, MyVeggieDiary>;
  @useResult
  $Res call({String date, String image, String content, bool isOpen});
}

/// @nodoc
class _$MyVeggieDiaryCopyWithImpl<$Res, $Val extends MyVeggieDiary>
    implements $MyVeggieDiaryCopyWith<$Res> {
  _$MyVeggieDiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? image = null,
    Object? content = null,
    Object? isOpen = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyVeggieDiaryImplCopyWith<$Res>
    implements $MyVeggieDiaryCopyWith<$Res> {
  factory _$$MyVeggieDiaryImplCopyWith(
          _$MyVeggieDiaryImpl value, $Res Function(_$MyVeggieDiaryImpl) then) =
      __$$MyVeggieDiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String image, String content, bool isOpen});
}

/// @nodoc
class __$$MyVeggieDiaryImplCopyWithImpl<$Res>
    extends _$MyVeggieDiaryCopyWithImpl<$Res, _$MyVeggieDiaryImpl>
    implements _$$MyVeggieDiaryImplCopyWith<$Res> {
  __$$MyVeggieDiaryImplCopyWithImpl(
      _$MyVeggieDiaryImpl _value, $Res Function(_$MyVeggieDiaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? image = null,
    Object? content = null,
    Object? isOpen = null,
  }) {
    return _then(_$MyVeggieDiaryImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyVeggieDiaryImpl implements _MyVeggieDiary {
  const _$MyVeggieDiaryImpl(
      {required this.date,
      required this.image,
      required this.content,
      required this.isOpen});

  factory _$MyVeggieDiaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyVeggieDiaryImplFromJson(json);

  @override
  final String date;
  @override
  final String image;
  @override
  final String content;
  @override
  final bool isOpen;

  @override
  String toString() {
    return 'MyVeggieDiary(date: $date, image: $image, content: $content, isOpen: $isOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyVeggieDiaryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, image, content, isOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyVeggieDiaryImplCopyWith<_$MyVeggieDiaryImpl> get copyWith =>
      __$$MyVeggieDiaryImplCopyWithImpl<_$MyVeggieDiaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyVeggieDiaryImplToJson(
      this,
    );
  }
}

abstract class _MyVeggieDiary implements MyVeggieDiary {
  const factory _MyVeggieDiary(
      {required final String date,
      required final String image,
      required final String content,
      required final bool isOpen}) = _$MyVeggieDiaryImpl;

  factory _MyVeggieDiary.fromJson(Map<String, dynamic> json) =
      _$MyVeggieDiaryImpl.fromJson;

  @override
  String get date;
  @override
  String get image;
  @override
  String get content;
  @override
  bool get isOpen;
  @override
  @JsonKey(ignore: true)
  _$$MyVeggieDiaryImplCopyWith<_$MyVeggieDiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
