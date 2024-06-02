class SearchFarmclubInfoModel {
  final int id;
  final String name;
  final String veggieName;
  final String veggieImage;
  final String difficulty;
  final String startedAt;
  final int maxUser;
  final int curUser;

  SearchFarmclubInfoModel({
    required this.id,
    required this.name,
    required this.veggieName,
    required this.veggieImage,
    required this.difficulty,
    required this.startedAt,
    required this.maxUser,
    required this.curUser,
  });

  factory SearchFarmclubInfoModel.fromJson(Map<String, dynamic> json) {
    return SearchFarmclubInfoModel(
      id: json['id'],
      name: json['name'],
      veggieName: json['veggieName'],
      veggieImage: json['veggieImage'],
      difficulty: json['difficulty'],
      startedAt: json['startedAt'],
      maxUser: json['maxUser'],
      curUser: json['curUser'],
    );
  }
}
