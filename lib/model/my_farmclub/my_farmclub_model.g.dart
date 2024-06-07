// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_farmclub_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFarmclubModelImpl _$$MyFarmclubModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyFarmclubModelImpl(
      farmClubId: (json['farmClubId'] as num).toInt(),
      farmClubImage: json['farmClubImage'] as String,
      farmClubName: json['farmClubName'] as String,
      veggieName: json['veggieName'] as String,
    );

Map<String, dynamic> _$$MyFarmclubModelImplToJson(
        _$MyFarmclubModelImpl instance) =>
    <String, dynamic>{
      'farmClubId': instance.farmClubId,
      'farmClubImage': instance.farmClubImage,
      'farmClubName': instance.farmClubName,
      'veggieName': instance.veggieName,
    };
