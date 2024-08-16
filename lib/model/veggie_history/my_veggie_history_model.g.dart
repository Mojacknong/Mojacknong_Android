// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyVeggieHistoryModelImpl _$$MyVeggieHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyVeggieHistoryModelImpl(
      detailId: json['detailId'] as String,
      image: json['image'] as String,
      historyName: json['historyName'] as String,
      backgroundColor: json['backgroundColor'] as String,
      name: json['name'] as String,
      period: json['period'] as String,
    );

Map<String, dynamic> _$$MyVeggieHistoryModelImplToJson(
        _$MyVeggieHistoryModelImpl instance) =>
    <String, dynamic>{
      'detailId': instance.detailId,
      'image': instance.image,
      'historyName': instance.historyName,
      'backgroundColor': instance.backgroundColor,
      'name': instance.name,
      'period': instance.period,
    };
