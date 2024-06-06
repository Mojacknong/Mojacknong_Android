// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veggie_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VeggieInfoModelImpl _$$VeggieInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VeggieInfoModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      difficulty: json['difficulty'] as String,
      veggieImage: json['veggieImage'] as String,
      period: json['period'] as String,
    );

Map<String, dynamic> _$$VeggieInfoModelImplToJson(
        _$VeggieInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'difficulty': instance.difficulty,
      'veggieImage': instance.veggieImage,
      'period': instance.period,
    };
