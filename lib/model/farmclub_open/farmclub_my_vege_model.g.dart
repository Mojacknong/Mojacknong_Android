// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_my_vege_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmclubMyVegeModelImpl _$$FarmclubMyVegeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FarmclubMyVegeModelImpl(
      myVeggieId: (json['myVeggieId'] as num).toInt(),
      veggieInfoId: json['veggieInfoId'] as String,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$FarmclubMyVegeModelImplToJson(
        _$FarmclubMyVegeModelImpl instance) =>
    <String, dynamic>{
      'myVeggieId': instance.myVeggieId,
      'veggieInfoId': instance.veggieInfoId,
      'nickname': instance.nickname,
    };
