// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_farmclub_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFarmclubHistoryModelImpl _$$UserFarmclubHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserFarmclubHistoryModelImpl(
      farmClubHistoryCount: (json['farmClubHistoryCount'] as num).toInt(),
      farmClubHistoryIcons: (json['farmClubHistoryIcons'] as List<dynamic>)
          .map((e) =>
              FarmclubHistoryIconModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserFarmclubHistoryModelImplToJson(
        _$UserFarmclubHistoryModelImpl instance) =>
    <String, dynamic>{
      'farmClubHistoryCount': instance.farmClubHistoryCount,
      'farmClubHistoryIcons': instance.farmClubHistoryIcons,
    };
