class Profile {
  final String? nickname;
  final String? profileImage;
  final bool isProfileComplete;

  Profile({
    this.nickname,
    this.profileImage,
    required this.isProfileComplete,
  });

  Profile copyWith({
    String? nickname,
    String? profileImage,
    bool? isProfileComplete,
  }) {
    return Profile(
      nickname: nickname ?? this.nickname,
      profileImage: profileImage ?? this.profileImage,
      isProfileComplete: isProfileComplete ?? this.isProfileComplete,
    );
  }
}
