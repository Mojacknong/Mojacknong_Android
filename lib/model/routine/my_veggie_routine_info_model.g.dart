// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_routine_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyVeggieRoutineInfoModelImpl _$$MyVeggieRoutineInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyVeggieRoutineInfoModelImpl(
      complete: json['complete'] as bool,
      content: json['content'] as String,
      period: (json['period'] as num).toInt(),
      routineId: (json['routineId'] as num).toInt(),
    );

Map<String, dynamic> _$$MyVeggieRoutineInfoModelImplToJson(
        _$MyVeggieRoutineInfoModelImpl instance) =>
    <String, dynamic>{
      'complete': instance.complete,
      'content': instance.content,
      'period': instance.period,
      'routineId': instance.routineId,
    };
