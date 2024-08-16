// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_veggie_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserVeggieHistoryModelImpl _$$UserVeggieHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserVeggieHistoryModelImpl(
      veggieHistoryCount: (json['veggieHistoryCount'] as num).toInt(),
      veggieHistoryIcons: (json['veggieHistoryIcons'] as List<dynamic>)
          .map(
              (e) => VeggieHistoryIconModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserVeggieHistoryModelImplToJson(
        _$UserVeggieHistoryModelImpl instance) =>
    <String, dynamic>{
      'veggieHistoryCount': instance.veggieHistoryCount,
      'veggieHistoryIcons': instance.veggieHistoryIcons,
    };
