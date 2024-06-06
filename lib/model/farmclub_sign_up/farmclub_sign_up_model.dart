class FarmclubSignupModel {
  final int myVeggieId;
  final String nickname;

  FarmclubSignupModel({
    required this.myVeggieId,
    required this.nickname,
  });

  factory FarmclubSignupModel.fromJson(Map<String, dynamic> json) {
    return FarmclubSignupModel(
      myVeggieId: json['myVeggieId'],
      nickname: json['nickname'],
    );
  }
}
