class Profile {
  final String? nickname;
  final String? profileImage;

  final bool hasSpecialCharacters;
  final bool isProfileComplete;

  Profile({
    this.nickname,
    this.profileImage,
    required this.hasSpecialCharacters,
    required this.isProfileComplete,
  });

  Profile copyWith({
    String? nickname,
    String? profileImage,
    bool? hasSpecialCharacters,
    bool? isProfileComplete,
  }) {
    return Profile(
      nickname: nickname ?? this.nickname,
      hasSpecialCharacters: hasSpecialCharacters ?? this.hasSpecialCharacters,
      profileImage: profileImage ?? this.profileImage,
      isProfileComplete: isProfileComplete ?? this.isProfileComplete,
    );
  }
}
