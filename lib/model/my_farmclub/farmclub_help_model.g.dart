// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_help_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmclubHelpModelImpl _$$FarmclubHelpModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FarmclubHelpModelImpl(
      veggieName: json['veggieName'] as String,
      veggieImage: json['veggieImage'] as String,
      backgroundColor: json['backgroundColor'] as String,
      help:
          FarmclubHelpInfoModel.fromJson(json['help'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => HelpStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FarmclubHelpModelImplToJson(
        _$FarmclubHelpModelImpl instance) =>
    <String, dynamic>{
      'veggieName': instance.veggieName,
      'veggieImage': instance.veggieImage,
      'backgroundColor': instance.backgroundColor,
      'help': instance.help,
      'steps': instance.steps,
    };

_$HelpStepImpl _$$HelpStepImplFromJson(Map<String, dynamic> json) =>
    _$HelpStepImpl(
      num: (json['num'] as num).toInt(),
      content: json['content'] as String,
      tips: (json['tips'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$HelpStepImplToJson(_$HelpStepImpl instance) =>
    <String, dynamic>{
      'num': instance.num,
      'content': instance.content,
      'tips': instance.tips,
    };
