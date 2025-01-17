// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farmclub_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FarmclubHelpModel _$FarmclubHelpModelFromJson(Map<String, dynamic> json) {
  return _FarmclubHelpModel.fromJson(json);
}

/// @nodoc
mixin _$FarmclubHelpModel {
  String get veggieName => throw _privateConstructorUsedError;
  String get veggieImage => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;
  FarmclubHelpInfoModel get help => throw _privateConstructorUsedError;
  List<HelpStep> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmclubHelpModelCopyWith<FarmclubHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmclubHelpModelCopyWith<$Res> {
  factory $FarmclubHelpModelCopyWith(
          FarmclubHelpModel value, $Res Function(FarmclubHelpModel) then) =
      _$FarmclubHelpModelCopyWithImpl<$Res, FarmclubHelpModel>;
  @useResult
  $Res call(
      {String veggieName,
      String veggieImage,
      String backgroundColor,
      FarmclubHelpInfoModel help,
      List<HelpStep> steps});

  $FarmclubHelpInfoModelCopyWith<$Res> get help;
}

/// @nodoc
class _$FarmclubHelpModelCopyWithImpl<$Res, $Val extends FarmclubHelpModel>
    implements $FarmclubHelpModelCopyWith<$Res> {
  _$FarmclubHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? veggieName = null,
    Object? veggieImage = null,
    Object? backgroundColor = null,
    Object? help = null,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      veggieName: null == veggieName
          ? _value.veggieName
          : veggieName // ignore: cast_nullable_to_non_nullable
              as String,
      veggieImage: null == veggieImage
          ? _value.veggieImage
          : veggieImage // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      help: null == help
          ? _value.help
          : help // ignore: cast_nullable_to_non_nullable
              as FarmclubHelpInfoModel,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<HelpStep>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FarmclubHelpInfoModelCopyWith<$Res> get help {
    return $FarmclubHelpInfoModelCopyWith<$Res>(_value.help, (value) {
      return _then(_value.copyWith(help: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FarmclubHelpModelImplCopyWith<$Res>
    implements $FarmclubHelpModelCopyWith<$Res> {
  factory _$$FarmclubHelpModelImplCopyWith(_$FarmclubHelpModelImpl value,
          $Res Function(_$FarmclubHelpModelImpl) then) =
      __$$FarmclubHelpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String veggieName,
      String veggieImage,
      String backgroundColor,
      FarmclubHelpInfoModel help,
      List<HelpStep> steps});

  @override
  $FarmclubHelpInfoModelCopyWith<$Res> get help;
}

/// @nodoc
class __$$FarmclubHelpModelImplCopyWithImpl<$Res>
    extends _$FarmclubHelpModelCopyWithImpl<$Res, _$FarmclubHelpModelImpl>
    implements _$$FarmclubHelpModelImplCopyWith<$Res> {
  __$$FarmclubHelpModelImplCopyWithImpl(_$FarmclubHelpModelImpl _value,
      $Res Function(_$FarmclubHelpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? veggieName = null,
    Object? veggieImage = null,
    Object? backgroundColor = null,
    Object? help = null,
    Object? steps = null,
  }) {
    return _then(_$FarmclubHelpModelImpl(
      veggieName: null == veggieName
          ? _value.veggieName
          : veggieName // ignore: cast_nullable_to_non_nullable
              as String,
      veggieImage: null == veggieImage
          ? _value.veggieImage
          : veggieImage // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      help: null == help
          ? _value.help
          : help // ignore: cast_nullable_to_non_nullable
              as FarmclubHelpInfoModel,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<HelpStep>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmclubHelpModelImpl implements _FarmclubHelpModel {
  const _$FarmclubHelpModelImpl(
      {required this.veggieName,
      required this.veggieImage,
      required this.backgroundColor,
      required this.help,
      required final List<HelpStep> steps})
      : _steps = steps;

  factory _$FarmclubHelpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmclubHelpModelImplFromJson(json);

  @override
  final String veggieName;
  @override
  final String veggieImage;
  @override
  final String backgroundColor;
  @override
  final FarmclubHelpInfoModel help;
  final List<HelpStep> _steps;
  @override
  List<HelpStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'FarmclubHelpModel(veggieName: $veggieName, veggieImage: $veggieImage, backgroundColor: $backgroundColor, help: $help, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmclubHelpModelImpl &&
            (identical(other.veggieName, veggieName) ||
                other.veggieName == veggieName) &&
            (identical(other.veggieImage, veggieImage) ||
                other.veggieImage == veggieImage) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.help, help) || other.help == help) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, veggieName, veggieImage,
      backgroundColor, help, const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmclubHelpModelImplCopyWith<_$FarmclubHelpModelImpl> get copyWith =>
      __$$FarmclubHelpModelImplCopyWithImpl<_$FarmclubHelpModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmclubHelpModelImplToJson(
      this,
    );
  }
}

abstract class _FarmclubHelpModel implements FarmclubHelpModel {
  const factory _FarmclubHelpModel(
      {required final String veggieName,
      required final String veggieImage,
      required final String backgroundColor,
      required final FarmclubHelpInfoModel help,
      required final List<HelpStep> steps}) = _$FarmclubHelpModelImpl;

  factory _FarmclubHelpModel.fromJson(Map<String, dynamic> json) =
      _$FarmclubHelpModelImpl.fromJson;

  @override
  String get veggieName;
  @override
  String get veggieImage;
  @override
  String get backgroundColor;
  @override
  FarmclubHelpInfoModel get help;
  @override
  List<HelpStep> get steps;
  @override
  @JsonKey(ignore: true)
  _$$FarmclubHelpModelImplCopyWith<_$FarmclubHelpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HelpStep _$HelpStepFromJson(Map<String, dynamic> json) {
  return _HelpStep.fromJson(json);
}

/// @nodoc
mixin _$HelpStep {
  int get num => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get tips => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelpStepCopyWith<HelpStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpStepCopyWith<$Res> {
  factory $HelpStepCopyWith(HelpStep value, $Res Function(HelpStep) then) =
      _$HelpStepCopyWithImpl<$Res, HelpStep>;
  @useResult
  $Res call({int num, String content, List<String> tips});
}

/// @nodoc
class _$HelpStepCopyWithImpl<$Res, $Val extends HelpStep>
    implements $HelpStepCopyWith<$Res> {
  _$HelpStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? content = null,
    Object? tips = null,
  }) {
    return _then(_value.copyWith(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      tips: null == tips
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelpStepImplCopyWith<$Res>
    implements $HelpStepCopyWith<$Res> {
  factory _$$HelpStepImplCopyWith(
          _$HelpStepImpl value, $Res Function(_$HelpStepImpl) then) =
      __$$HelpStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int num, String content, List<String> tips});
}

/// @nodoc
class __$$HelpStepImplCopyWithImpl<$Res>
    extends _$HelpStepCopyWithImpl<$Res, _$HelpStepImpl>
    implements _$$HelpStepImplCopyWith<$Res> {
  __$$HelpStepImplCopyWithImpl(
      _$HelpStepImpl _value, $Res Function(_$HelpStepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? content = null,
    Object? tips = null,
  }) {
    return _then(_$HelpStepImpl(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      tips: null == tips
          ? _value._tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelpStepImpl implements _HelpStep {
  const _$HelpStepImpl(
      {required this.num,
      required this.content,
      required final List<String> tips})
      : _tips = tips;

  factory _$HelpStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelpStepImplFromJson(json);

  @override
  final int num;
  @override
  final String content;
  final List<String> _tips;
  @override
  List<String> get tips {
    if (_tips is EqualUnmodifiableListView) return _tips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tips);
  }

  @override
  String toString() {
    return 'HelpStep(num: $num, content: $content, tips: $tips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelpStepImpl &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._tips, _tips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, num, content, const DeepCollectionEquality().hash(_tips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelpStepImplCopyWith<_$HelpStepImpl> get copyWith =>
      __$$HelpStepImplCopyWithImpl<_$HelpStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelpStepImplToJson(
      this,
    );
  }
}

abstract class _HelpStep implements HelpStep {
  const factory _HelpStep(
      {required final int num,
      required final String content,
      required final List<String> tips}) = _$HelpStepImpl;

  factory _HelpStep.fromJson(Map<String, dynamic> json) =
      _$HelpStepImpl.fromJson;

  @override
  int get num;
  @override
  String get content;
  @override
  List<String> get tips;
  @override
  @JsonKey(ignore: true)
  _$$HelpStepImplCopyWith<_$HelpStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
