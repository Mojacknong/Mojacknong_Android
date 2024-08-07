// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_page_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyPageInfoModelImpl _$$MyPageInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyPageInfoModelImpl(
      nickName: json['nickName'] as String,
      userImageUrl: json['userImageUrl'] as String,
      dday: (json['dday'] as num).toInt(),
    );

Map<String, dynamic> _$$MyPageInfoModelImplToJson(
        _$MyPageInfoModelImpl instance) =>
    <String, dynamic>{
      'nickName': instance.nickName,
      'userImageUrl': instance.userImageUrl,
      'dday': instance.dday,
    };
