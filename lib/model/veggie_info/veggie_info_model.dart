import 'package:freezed_annotation/freezed_annotation.dart';

part 'veggie_info_model.freezed.dart';
part 'veggie_info_model.g.dart';

@freezed
class VeggieInfoModel with _$VeggieInfoModel {
  factory VeggieInfoModel({
    @JsonKey(name: '_id')
    required String id,
    required String name,
    required String difficulty,
    required String veggieImage,
    required String period,
  }) = _VeggieInfoModel;

  factory VeggieInfoModel.fromJson(Map<String, dynamic> json) =>
      _$VeggieInfoModelFromJson(json);
}
