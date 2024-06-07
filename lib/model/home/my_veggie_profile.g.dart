// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyVeggieProfileImpl _$$MyVeggieProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$MyVeggieProfileImpl(
      veggieName: json['veggieName'] as String,
      veggieImage: json['veggieImage'] as String,
      createdVeggie: json['createdVeggie'] as String,
      period: (json['period'] as num).toInt(),
      step: (json['step'] as num).toInt(),
    );

Map<String, dynamic> _$$MyVeggieProfileImplToJson(
        _$MyVeggieProfileImpl instance) =>
    <String, dynamic>{
      'veggieName': instance.veggieName,
      'veggieImage': instance.veggieImage,
      'createdVeggie': instance.createdVeggie,
      'period': instance.period,
      'step': instance.step,
    };
