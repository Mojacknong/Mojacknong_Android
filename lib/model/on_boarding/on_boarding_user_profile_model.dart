import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'on_boarding_user_profile_model.freezed.dart';
part 'on_boarding_user_profile_model.g.dart';

@freezed
class OnBoardingUserProfileModel with _$OnBoardingUserProfileModel {
  factory OnBoardingUserProfileModel({
    required String? file,
    required String nickName,
  }) = _OnBoardingUserProfileModel;

  factory OnBoardingUserProfileModel.fromJson(Map<String, dynamic> json) => _$OnBoardingUserProfileModelFromJson(json);
}