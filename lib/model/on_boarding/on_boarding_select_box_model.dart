class OnBoardingMotivationModel {
  final String buttonText;
  final bool isFirstSelect;
  final bool isSecondSelect;
  final bool isThirdSelect;

  OnBoardingMotivationModel({
    required this.buttonText,
    required this.isFirstSelect,
    required this.isSecondSelect,
    required this.isThirdSelect,
  });

  OnBoardingMotivationModel copyWith({
    String? buttonText,
    bool? isFirstSelect,
    bool? isSecondSelect,
    bool? isThirdSelect,
  }) {
    return OnBoardingMotivationModel(
      buttonText: buttonText ?? this.buttonText,
      isFirstSelect: isFirstSelect ?? this.isFirstSelect,
      isSecondSelect: isSecondSelect ?? this.isSecondSelect,
      isThirdSelect: isThirdSelect ?? this.isThirdSelect,
    );
  }
}
