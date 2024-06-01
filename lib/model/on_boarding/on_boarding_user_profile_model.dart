class OnBoardingUserProfileModel {
  final String? file;
  final String nickName;

  OnBoardingUserProfileModel({
    required this.file,
    required this.nickName,
  });

  factory OnBoardingUserProfileModel.fromJson(Map<String, dynamic> json) {
    return OnBoardingUserProfileModel(
      file: json['file'] ?? '',
      nickName: json['nickName'] ?? '',
    );
  }
}
