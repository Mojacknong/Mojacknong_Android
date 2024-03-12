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
    bool? isFirstSelect,
    bool? isSecondSelect,
    bool? isThirdSelect,
    bool? isTimeComplete,
  }) {
    return OnBoardingTimeModel(
      isFirstSelect: isFirstSelect ?? this.isFirstSelect,
      isSecondSelect: isSecondSelect ?? this.isSecondSelect,
      isThirdSelect: isThirdSelect ?? this.isThirdSelect,
      isTimeComplete: isTimeComplete ?? this.isTimeComplete,
    );
  }
}
