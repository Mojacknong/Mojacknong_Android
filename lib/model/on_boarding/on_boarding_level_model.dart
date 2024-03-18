class OnBoardingLevelModel {
  final bool isFirstSelect;
  final bool isSecondSelect;
  final bool isThirdSelect;
  final bool isFourthSelect;
  final bool isLevelComplete;

  OnBoardingLevelModel({
    required this.isFirstSelect,
    required this.isSecondSelect,
    required this.isThirdSelect,
    required this.isFourthSelect,
    required this.isLevelComplete,
  });

  OnBoardingLevelModel copyWith({
    bool? isFirstSelect,
    bool? isSecondSelect,
    bool? isThirdSelect,
    bool? isFourthSelect,
    bool? isLevelComplete,
  }) {
    return OnBoardingLevelModel(
      isFirstSelect: isFirstSelect ?? this.isFirstSelect,
      isSecondSelect: isSecondSelect ?? this.isSecondSelect,
      isThirdSelect: isThirdSelect ?? this.isThirdSelect,
      isFourthSelect: isFourthSelect ?? this.isFourthSelect,
      isLevelComplete: isLevelComplete ?? this.isLevelComplete,
    );
  }
}