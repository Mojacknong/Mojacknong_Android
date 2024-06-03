class RecommendVeggieModel {
  final String? image;
  final String? name;
  final String? difficulty;
  final String? period;

  RecommendVeggieModel({this.image, this.name, this.difficulty, this.period});

  RecommendVeggieModel copyWith({
    String? image,
    String? name,
    String? difficulty,
    String? period,
  }) {
    return RecommendVeggieModel(
        image: image ?? this.image,
        name: name ?? this.name,
        difficulty: difficulty ?? this.difficulty,
        period: period ?? this.period);
  }
}
