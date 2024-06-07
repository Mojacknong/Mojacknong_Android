// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyVeggieInfoImpl _$$MyVeggieInfoImplFromJson(Map<String, dynamic> json) =>
    _$MyVeggieInfoImpl(
      nickname: json['nickname'] as String,
      image: json['image'] as String,
      veggieName: json['veggieName'] as String,
      birthDay: json['birthDay'] as String,
      period: (json['period'] as num).toInt(),
      myVeggieId: (json['myVeggieId'] as num).toInt(),
    );

Map<String, dynamic> _$$MyVeggieInfoImplToJson(_$MyVeggieInfoImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'image': instance.image,
      'veggieName': instance.veggieName,
      'birthDay': instance.birthDay,
      'period': instance.period,
      'myVeggieId': instance.myVeggieId,
    };
