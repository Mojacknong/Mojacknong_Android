// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_farmclub_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchFarmclubDetailModelImpl _$$SearchFarmclubDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchFarmclubDetailModelImpl(
      farmClubId: (json['farmClubId'] as num).toInt(),
      farmClubName: json['farmClubName'] as String,
      veggieName: json['veggieName'] as String,
      veggieImage: json['veggieImage'] as String,
      farmClubDescription: json['farmClubDescription'] as String,
      startedAt: json['startedAt'] as String,
      maxMemberCount: (json['maxMemberCount'] as num).toInt(),
      currentMemberCount: (json['currentMemberCount'] as num).toInt(),
      veggieInfoId: json['veggieInfoId'] as String,
      help:
          FarmclubHelpInfoModel.fromJson(json['help'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchFarmclubDetailModelImplToJson(
        _$SearchFarmclubDetailModelImpl instance) =>
    <String, dynamic>{
      'farmClubId': instance.farmClubId,
      'farmClubName': instance.farmClubName,
      'veggieName': instance.veggieName,
      'veggieImage': instance.veggieImage,
      'farmClubDescription': instance.farmClubDescription,
      'startedAt': instance.startedAt,
      'maxMemberCount': instance.maxMemberCount,
      'currentMemberCount': instance.currentMemberCount,
      'veggieInfoId': instance.veggieInfoId,
      'help': instance.help,
    };
