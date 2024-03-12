import 'package:image_picker/image_picker.dart';

class OnBoardingProfileModel {
  final String? nickname;
  final XFile? profileImage;
  final bool isProfileComplete;

  OnBoardingProfileModel({
    this.nickname,
    this.profileImage,
    required this.isProfileComplete,
  });

  OnBoardingProfileModel copyWith({
    String? nickname,
    XFile? profileImage,
    bool? isProfileComplete,
  }) {
    return OnBoardingProfileModel(
      nickname: nickname ?? this.nickname,
      profileImage: profileImage ?? this.profileImage,
      isProfileComplete: isProfileComplete ?? this.isProfileComplete,
    );
  }
}
