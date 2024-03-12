class OnBoardingTimeModel {
  final bool isFirstSelect;
  final bool isSecondSelect;
  final bool isThirdSelect;

  OnBoardingTimeModel({
    required this.isFirstSelect,
    required this.isSecondSelect,
    required this.isThirdSelect,
  });

  OnBoardingTimeModel copyWith({
    bool? isFirstSelect,
    bool? isSecondSelect,
    bool? isThirdSelect,
  }) {
    return OnBoardingTimeModel(
      isFirstSelect: isFirstSelect ?? this.isFirstSelect,
      isSecondSelect: isSecondSelect ?? this.isSecondSelect,
      isThirdSelect: isThirdSelect ?? this.isThirdSelect,
    );
  }
}
