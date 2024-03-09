class OnBoardingProfileModel {
  final String? nickname;
  final String? profileImage;
  final bool isProfileComplete;

  OnBoardingProfileModel({
    this.nickname,
    this.profileImage,
    required this.isProfileComplete,
  });

  OnBoardingProfileModel copyWith({
    String? nickname,
    String? profileImage,
    bool? isProfileComplete,
  }) {
    return OnBoardingProfileModel(
      nickname: nickname ?? this.nickname,
      profileImage: profileImage ?? this.profileImage,
      isProfileComplete: isProfileComplete ?? this.isProfileComplete,
    );
  }
}
