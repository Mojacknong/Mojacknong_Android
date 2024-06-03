class FarmclubHelpInfoModel {
  final String material;
  final List<String> selectHow;
  final List<String> features;

  FarmclubHelpInfoModel({
    required this.material,
    required this.selectHow,
    required this.features,
  });

  factory FarmclubHelpInfoModel.fromJson(Map<String, dynamic> json) {
    return FarmclubHelpInfoModel(
      material: json['material'],
      selectHow: List<String>.from(json['selectHow']),
      features: List<String>.from(json['features']),
    );
  }
}
