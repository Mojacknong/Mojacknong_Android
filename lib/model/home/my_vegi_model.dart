class MyVegiModel {
  final String vegiName;

  MyVegiModel({
    required this.vegiName,
  });

  MyVegiModel copyWith({
    String? vegiName,
  }) {
    return MyVegiModel(
      vegiName: vegiName ?? this.vegiName,
    );
  }
}
