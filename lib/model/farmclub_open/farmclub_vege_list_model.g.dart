// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_vege_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmclubVegeListModelImpl _$$FarmclubVegeListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FarmclubVegeListModelImpl(
      farmClubName: json['farmClubName'] as String,
      farmClubDescription: json['farmClubDescription'] as String,
      maxMemberCount: (json['maxMemberCount'] as num).toInt(),
      startDate: json['startDate'] as String,
      myVeggieId: (json['myVeggieId'] as num).toInt(),
      veggieInfoId: json['veggieInfoId'] as String,
      isFarmclubOpenInfoComplete: json['isFarmclubOpenInfoComplete'] as bool?,
      selectedVege: (json['selectedVege'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FarmclubVegeListModelImplToJson(
        _$FarmclubVegeListModelImpl instance) =>
    <String, dynamic>{
      'farmClubName': instance.farmClubName,
      'farmClubDescription': instance.farmClubDescription,
      'maxMemberCount': instance.maxMemberCount,
      'startDate': instance.startDate,
      'myVeggieId': instance.myVeggieId,
      'veggieInfoId': instance.veggieInfoId,
      'isFarmclubOpenInfoComplete': instance.isFarmclubOpenInfoComplete,
      'selectedVege': instance.selectedVege,
    };
