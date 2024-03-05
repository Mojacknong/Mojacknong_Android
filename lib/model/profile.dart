class Profile {
  final String nickname;
  final bool hasSpecialCharacters;
  final String profileImage;

  Profile({
    required this.nickname,
    required this.hasSpecialCharacters,
    required this.profileImage,
  });

  Profile copyWith({
    String? nickname,
    String? profileImage,
    bool? hasSpecialCharacters,
  }) {
    return Profile(
      nickname: nickname ?? this.nickname,
      hasSpecialCharacters: hasSpecialCharacters ?? this.hasSpecialCharacters,
      profileImage: profileImage ?? this.profileImage,
    );
  }
}
