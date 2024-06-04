// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_farmclubs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendedFarmclubsModelImpl _$$RecommendedFarmclubsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendedFarmclubsModelImpl(
      recFirst: SearchFarmclubDetailModel.fromJson(
          json['recFirst'] as Map<String, dynamic>),
      recSecond: SearchFarmclubDetailModel.fromJson(
          json['recSecond'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecommendedFarmclubsModelImplToJson(
        _$RecommendedFarmclubsModelImpl instance) =>
    <String, dynamic>{
      'recFirst': instance.recFirst,
      'recSecond': instance.recSecond,
    };
