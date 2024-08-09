// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veggie_history_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VeggieHistoryListModelImpl _$$VeggieHistoryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VeggieHistoryListModelImpl(
      detailId: json['detailId'] as String,
      image: json['image'] as String,
      historyName: json['historyName'] as String,
      name: json['name'] as String,
      period: json['period'] as String,
    );

Map<String, dynamic> _$$VeggieHistoryListModelImplToJson(
        _$VeggieHistoryListModelImpl instance) =>
    <String, dynamic>{
      'detailId': instance.detailId,
      'image': instance.image,
      'historyName': instance.historyName,
      'name': instance.name,
      'period': instance.period,
    };
