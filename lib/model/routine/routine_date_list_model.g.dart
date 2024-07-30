// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_date_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutineDateListModelImpl _$$RoutineDateListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineDateListModelImpl(
      nickname: json['nickname'] as String,
      veggieName: json['veggieName'] as String,
      myVeggieRoutineList: (json['myVeggieRoutineList'] as List<dynamic>)
          .map((e) =>
              MyVeggieRoutineInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoutineDateListModelImplToJson(
        _$RoutineDateListModelImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'veggieName': instance.veggieName,
      'myVeggieRoutineList': instance.myVeggieRoutineList,
    };
