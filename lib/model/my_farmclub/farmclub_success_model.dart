import 'package:freezed_annotation/freezed_annotation.dart';
part 'farmclub_success_model.freezed.dart';
part 'farmclub_success_model.g.dart';
@freezed
class FarmclubSuccessModel with _$FarmclubSuccessModel {
  const factory FarmclubSuccessModel({
    required String farmClubName,
    required String veggieImage,
    required int date,
    required String period,
    required int diaryCount,
    required int missionPostCount,
  }) = _FarmclubSuccessModel;

  factory FarmclubSuccessModel.fromJson(Map<String, dynamic> json) =>
      _$FarmclubSuccessModelFromJson(json);
}