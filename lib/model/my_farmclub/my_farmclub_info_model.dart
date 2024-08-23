import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_farmclub_info_model.freezed.dart';
part 'my_farmclub_info_model.g.dart';

@freezed
abstract class MyFarmclubInfoModel with _$MyFarmclubInfoModel {
  const factory MyFarmclubInfoModel({
    required int farmClubId,
    required String farmClubName,
    required String farmClubImage,
    required int wholeMemberCount,
    required int currentStep,
    required List<StepModel> steps,
    required String advice,
    required int daysSinceStart,
  }) = _MyFarmclubInfoModel;

  factory MyFarmclubInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MyFarmclubInfoModelFromJson(json);
}

@freezed
abstract class StepModel with _$StepModel {
  const factory StepModel({
    required List<String> images,
    required int stepNum,
    required String stepName,
    required int completeMemberCount,
  }) = _StepModel;

  factory StepModel.fromJson(Map<String, dynamic> json) =>
      _$StepModelFromJson(json);
}
