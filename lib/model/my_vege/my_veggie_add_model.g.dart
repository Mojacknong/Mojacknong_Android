// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_add_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyVeggieAddModelImpl _$$MyVeggieAddModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyVeggieAddModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      difficulty: json['difficulty'] as String,
      veggieImage: json['veggieImage'] as String,
      period: json['period'] as String,
    );

Map<String, dynamic> _$$MyVeggieAddModelImplToJson(
        _$MyVeggieAddModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'difficulty': instance.difficulty,
      'veggieImage': instance.veggieImage,
      'period': instance.period,
    };
