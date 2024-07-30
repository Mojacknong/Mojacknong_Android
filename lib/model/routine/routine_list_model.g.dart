// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutineListModelImpl _$$RoutineListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoutineListModelImpl(
      nickname: json['nickname'] as String,
      veggieName: json['veggieName'] as String,
      myVeggieRoutineList: (json['myVeggieRoutineList'] as List<dynamic>)
          .map((e) =>
              MyVeggieRoutineInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoutineListModelImplToJson(
        _$RoutineListModelImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'veggieName': instance.veggieName,
      'myVeggieRoutineList': instance.myVeggieRoutineList,
    };
