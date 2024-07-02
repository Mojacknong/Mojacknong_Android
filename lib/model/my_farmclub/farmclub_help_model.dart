
import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmclub_help_model.freezed.dart';
part 'farmclub_help_model.g.dart';

@freezed
class FarmclubHelpModel with _$FarmclubHelpModel {
  const factory FarmclubHelpModel({
    required Help help,
    required List<HelpStep> steps,
  }) = _FarmclubHelpModel;

  factory FarmclubHelpModel.fromJson(Map<String, dynamic> json) => _$FarmclubHelpModelFromJson(json);
}

@freezed
class Help with _$Help {
  const factory Help({
    required String material,
    required List<String> selectHow,
    required List<String> features,
  }) = _Help;

  factory Help.fromJson(Map<String, dynamic> json) => _$HelpFromJson(json);
}

@freezed
class HelpStep with _$HelpStep {
  const factory HelpStep({
    required int num,
    required String content,
    required List<String> tips,
  }) = _HelpStep;

  factory HelpStep.fromJson(Map<String, dynamic> json) => _$HelpStepFromJson(json);
}
