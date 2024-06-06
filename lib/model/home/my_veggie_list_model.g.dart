// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyVeggieListModelImpl _$$MyVeggieListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyVeggieListModelImpl(
      myVeggieId: (json['myVeggieId'] as num).toInt(),
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$MyVeggieListModelImplToJson(
        _$MyVeggieListModelImpl instance) =>
    <String, dynamic>{
      'myVeggieId': instance.myVeggieId,
      'nickname': instance.nickname,
    };
