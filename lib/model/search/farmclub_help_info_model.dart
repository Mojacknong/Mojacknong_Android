import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmclub_help_info_model.freezed.dart';
part 'farmclub_help_info_model.g.dart';

@freezed
class FarmclubHelpInfoModel with _$FarmclubHelpInfoModel {
  const factory FarmclubHelpInfoModel({
    required String material,
    required List<String> selectHow,
    required List<String> features,
  }) = _FarmclubHelpInfoModel;

  factory FarmclubHelpInfoModel.fromJson(Map<String, dynamic> json) =>
      _$FarmclubHelpInfoModelFromJson(json);
}
