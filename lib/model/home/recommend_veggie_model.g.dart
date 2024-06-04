// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_veggie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendVeggieModelImpl _$$RecommendVeggieModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendVeggieModelImpl(
      image: json['image'] as String,
      name: json['name'] as String,
      difficulty: json['difficulty'] as String,
      period: json['period'] as String,
    );

Map<String, dynamic> _$$RecommendVeggieModelImplToJson(
        _$RecommendVeggieModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'difficulty': instance.difficulty,
      'period': instance.period,
    };
