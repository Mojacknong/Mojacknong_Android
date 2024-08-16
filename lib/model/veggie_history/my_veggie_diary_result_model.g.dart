// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_diary_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyVeggieDiaryResultModelImpl _$$MyVeggieDiaryResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyVeggieDiaryResultModelImpl(
      diaries: (json['diaries'] as List<dynamic>)
          .map((e) => Diary.fromJson(e as Map<String, dynamic>))
          .toList(),
      farmResult:
          FarmResult.fromJson(json['farmResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyVeggieDiaryResultModelImplToJson(
        _$MyVeggieDiaryResultModelImpl instance) =>
    <String, dynamic>{
      'diaries': instance.diaries,
      'farmResult': instance.farmResult,
    };

_$DiaryImpl _$$DiaryImplFromJson(Map<String, dynamic> json) => _$DiaryImpl(
      postImage: json['postImage'] as String,
      content: json['content'] as String,
      dateTime: json['dateTime'] as String,
    );

Map<String, dynamic> _$$DiaryImplToJson(_$DiaryImpl instance) =>
    <String, dynamic>{
      'postImage': instance.postImage,
      'content': instance.content,
      'dateTime': instance.dateTime,
    };

_$FarmResultImpl _$$FarmResultImplFromJson(Map<String, dynamic> json) =>
    _$FarmResultImpl(
      postImage: json['postImage'] as String,
      content: json['content'] as String,
      dateTime: json['dateTime'] as String,
    );

Map<String, dynamic> _$$FarmResultImplToJson(_$FarmResultImpl instance) =>
    <String, dynamic>{
      'postImage': instance.postImage,
      'content': instance.content,
      'dateTime': instance.dateTime,
    };
