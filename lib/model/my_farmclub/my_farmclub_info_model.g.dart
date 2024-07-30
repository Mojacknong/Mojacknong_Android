// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_farmclub_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFarmclubInfoModelImpl _$$MyFarmclubInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyFarmclubInfoModelImpl(
      farmClubName: json['farmClubName'] as String,
      farmClubImage: json['farmClubImage'] as String,
      wholeMemberCount: (json['wholeMemberCount'] as num).toInt(),
      currentStep: (json['currentStep'] as num).toInt(),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      advice: json['advice'] as String,
      daysSinceStart: (json['daysSinceStart'] as num).toInt(),
    );

Map<String, dynamic> _$$MyFarmclubInfoModelImplToJson(
        _$MyFarmclubInfoModelImpl instance) =>
    <String, dynamic>{
      'farmClubName': instance.farmClubName,
      'farmClubImage': instance.farmClubImage,
      'wholeMemberCount': instance.wholeMemberCount,
      'currentStep': instance.currentStep,
      'steps': instance.steps,
      'advice': instance.advice,
      'daysSinceStart': instance.daysSinceStart,
    };

_$StepModelImpl _$$StepModelImplFromJson(Map<String, dynamic> json) =>
    _$StepModelImpl(
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      stepNum: (json['stepNum'] as num).toInt(),
      stepName: json['stepName'] as String,
      completeMemberCount: (json['completeMemberCount'] as num).toInt(),
    );

Map<String, dynamic> _$$StepModelImplToJson(_$StepModelImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
      'stepNum': instance.stepNum,
      'stepName': instance.stepName,
      'completeMemberCount': instance.completeMemberCount,
    };
