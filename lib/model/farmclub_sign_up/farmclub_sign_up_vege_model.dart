class FarmclubSignUpVegeModel {
  final String vegeName;
  final bool isChecked;

  FarmclubSignUpVegeModel({
    required this.vegeName,
    this.isChecked = false,
  });

  FarmclubSignUpVegeModel copyWith({
    String? vegeName,
    bool? isChecked,
  }) {
    return FarmclubSignUpVegeModel(
      vegeName: vegeName ?? this.vegeName,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}
