// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyVeggieDiaryImpl _$$MyVeggieDiaryImplFromJson(Map<String, dynamic> json) =>
    _$MyVeggieDiaryImpl(
      date: json['date'] as String,
      image: json['image'] as String,
      content: json['content'] as String,
      isOpen: json['isOpen'] as bool,
    );

Map<String, dynamic> _$$MyVeggieDiaryImplToJson(_$MyVeggieDiaryImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'image': instance.image,
      'content': instance.content,
      'isOpen': instance.isOpen,
    };
