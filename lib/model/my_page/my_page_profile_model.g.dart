// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_page_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyPageProfileModelImpl _$$MyPageProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyPageProfileModelImpl(
      nickname: json['nickname'] as String,
      image: const FileConverter().fromJson(json['image'] as String?),
      isInfoChangeComplete: json['isInfoChangeComplete'] as bool?,
    );

Map<String, dynamic> _$$MyPageProfileModelImplToJson(
        _$MyPageProfileModelImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'image': const FileConverter().toJson(instance.image),
      'isInfoChangeComplete': instance.isInfoChangeComplete,
    };
