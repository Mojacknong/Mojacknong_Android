class OnBoardingTimeModel {
  final bool isFirstSelect;
  final bool isSecondSelect;
  final bool isThirdSelect;
  final bool isTimeComplete;

  OnBoardingTimeModel({
    required this.isFirstSelect,
    required this.isSecondSelect,
    required this.isThirdSelect,
    required this.isTimeComplete,
  });

  OnBoardingTimeModel copyWith({
    required bool isFirstSelect,
    required bool isSecondSelect,
    required bool isThirdSelect,
    required bool isTimeComplete,
  }) {
    return OnBoardingTimeModel(
      isFirstSelect: isFirstSelect,
      isSecondSelect: isSecondSelect,
      isThirdSelect: isThirdSelect,
      isTimeComplete: isTimeComplete,
    );
  }
}
