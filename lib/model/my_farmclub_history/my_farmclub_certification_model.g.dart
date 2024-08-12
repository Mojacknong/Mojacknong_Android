// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_farmclub_certification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFarmclubCertificationModelImpl _$$MyFarmclubCertificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyFarmclubCertificationModelImpl(
      missionPosts: (json['missionPosts'] as List<dynamic>)
          .map((e) => MissionPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyFarmclubCertificationModelImplToJson(
        _$MyFarmclubCertificationModelImpl instance) =>
    <String, dynamic>{
      'missionPosts': instance.missionPosts,
    };

_$MissionPostImpl _$$MissionPostImplFromJson(Map<String, dynamic> json) =>
    _$MissionPostImpl(
      stepNum: (json['stepNum'] as num).toInt(),
      stepName: json['stepName'] as String,
      postImage: json['postImage'] as String,
      content: json['content'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$MissionPostImplToJson(_$MissionPostImpl instance) =>
    <String, dynamic>{
      'stepNum': instance.stepNum,
      'stepName': instance.stepName,
      'postImage': instance.postImage,
      'content': instance.content,
      'date': instance.date,
    };
