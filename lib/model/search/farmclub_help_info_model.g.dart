// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_help_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmclubHelpInfoModelImpl _$$FarmclubHelpInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FarmclubHelpInfoModelImpl(
      material: json['material'] as String,
      selectHow:
          (json['selectHow'] as List<dynamic>).map((e) => e as String).toList(),
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FarmclubHelpInfoModelImplToJson(
        _$FarmclubHelpInfoModelImpl instance) =>
    <String, dynamic>{
      'material': instance.material,
      'selectHow': instance.selectHow,
      'features': instance.features,
    };
