class FarmclubSignupVegeModel {
  final String vegeName;
  final bool isChecked;

  FarmclubSignupVegeModel({
    required this.vegeName,
    this.isChecked = false,
  });

  FarmclubSignupVegeModel copyWith({
    String? vegeName,
    bool? isChecked,
  }) {
    return FarmclubSignupVegeModel(
      vegeName: vegeName ?? this.vegeName,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}
