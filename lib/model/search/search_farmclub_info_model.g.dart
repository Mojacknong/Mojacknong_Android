// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_farmclub_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchFarmclubInfoModelImpl _$$SearchFarmclubInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchFarmclubInfoModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      veggieName: json['veggieName'] as String,
      veggieImage: json['veggieImage'] as String,
      difficulty: json['difficulty'] as String,
      startedAt: json['startedAt'] as String,
      maxUser: (json['maxUser'] as num).toInt(),
      curUser: (json['curUser'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchFarmclubInfoModelImplToJson(
        _$SearchFarmclubInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'veggieName': instance.veggieName,
      'veggieImage': instance.veggieImage,
      'difficulty': instance.difficulty,
      'startedAt': instance.startedAt,
      'maxUser': instance.maxUser,
      'curUser': instance.curUser,
    };
