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
    required String buttonText,
    required bool isFirstSelect,
    required bool isSecondSelect,
    required bool isThirdSelect,
  }) {
    return OnBoardingMotivationModel(
      buttonText: buttonText,
      isFirstSelect: isFirstSelect,
      isSecondSelect: isSecondSelect,
      isThirdSelect: isThirdSelect,
    );
  }
}
