// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_success_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmclubSuccessModelImpl _$$FarmclubSuccessModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FarmclubSuccessModelImpl(
      farmClubName: json['farmClubName'] as String,
      veggieImage: json['veggieImage'] as String,
      date: (json['date'] as num).toInt(),
      period: json['period'] as String,
      diaryCount: (json['diaryCount'] as num).toInt(),
      missionPostCount: (json['missionPostCount'] as num).toInt(),
    );

Map<String, dynamic> _$$FarmclubSuccessModelImplToJson(
        _$FarmclubSuccessModelImpl instance) =>
    <String, dynamic>{
      'farmClubName': instance.farmClubName,
      'veggieImage': instance.veggieImage,
      'date': instance.date,
      'period': instance.period,
      'diaryCount': instance.diaryCount,
      'missionPostCount': instance.missionPostCount,
    };
