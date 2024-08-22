import 'package:freezed_annotation/freezed_annotation.dart';

import '../search/farmclub_help_info_model.dart';

part 'farmclub_help_model.freezed.dart';
part 'farmclub_help_model.g.dart';

@freezed
class FarmclubHelpModel with _$FarmclubHelpModel {
  const factory FarmclubHelpModel({
    required String veggieName,
    required String veggieImage,
    required String backgroundColor,
    required FarmclubHelpInfoModel help,
    required List<HelpStep> steps,
  }) = _FarmclubHelpModel;

  factory FarmclubHelpModel.fromJson(Map<String, dynamic> json) =>
      _$FarmclubHelpModelFromJson(json);
}

@freezed
class HelpStep with _$HelpStep {
  const factory HelpStep({
    required int num,
    required String content,
    required List<String> tips,
  }) = _HelpStep;

  factory HelpStep.fromJson(Map<String, dynamic> json) =>
      _$HelpStepFromJson(json);
}
