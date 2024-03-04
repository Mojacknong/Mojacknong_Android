class Profile {
  final String nickname;
  final String profileImage;

  Profile({required this.nickname, required this.profileImage});

  Profile copyWith({
    String? nickname,
    String? profileImage,
  }) {
    return Profile(
      nickname: nickname ?? this.nickname,
      profileImage: profileImage ?? this.profileImage,
    );
  }
}
