class FarmclubOpenInfoModel {
  final String name;
  final String num;
  final String intro;
  final String date;
  final bool isFarmclubOpenInfoComplete;

  FarmclubOpenInfoModel({
    required this.name,
    required this.num,
    required this.intro,
    required this.date,
    required this.isFarmclubOpenInfoComplete,
  });

  FarmclubOpenInfoModel copyWith({
    String? name,
    String? num,
    String? intro,
    String? date,
    bool? isFarmclubOpenInfoComplete,
  }) {
    return FarmclubOpenInfoModel(
      name: name ?? this.name,
      num: num ?? this.num,
      intro: intro ?? this.intro,
      date: date ?? this.date,
      isFarmclubOpenInfoComplete:
          isFarmclubOpenInfoComplete ?? this.isFarmclubOpenInfoComplete,
    );
  }
}
