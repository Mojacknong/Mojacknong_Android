class OnBoardingLevelModel {
  final bool isManyTimeSelect;
  final bool isMediumTimeSelect;
  final bool isSmallTimeSelect;
  final bool isTimeComplete;
  final bool isFirstLevelSelect;
  final bool isLowLevelSelect;
  final bool isMediumLevelSelect;
  final bool isHighLevelSelect;
  final bool isLevelComplete;

  OnBoardingLevelModel(
      {required this.isManyTimeSelect,
      required this.isMediumTimeSelect,
      required this.isSmallTimeSelect,
      required this.isTimeComplete,
      required this.isFirstLevelSelect,
      required this.isLowLevelSelect,
      required this.isMediumLevelSelect,
      required this.isHighLevelSelect,
      required this.isLevelComplete});

  OnBoardingLevelModel copyWith({
    required bool isManyTimeSelect,
    required bool isMediumTimeSelect,
    required bool isSmallTimeSelect,
    required bool isTimeComplete,
    required bool isFirstLevelSelect,
    required bool isLowLevelSelect,
    required bool isMediumSelect,
    required bool isHighLevelSelect,
    required bool isLevelComplete,
  }) {
    return OnBoardingLevelModel(
      isManyTimeSelect: isManyTimeSelect,
      isMediumTimeSelect: isMediumTimeSelect,
      isSmallTimeSelect: isSmallTimeSelect,
      isTimeComplete: isTimeComplete,
      isFirstLevelSelect: isFirstLevelSelect,
      isLowLevelSelect: isLowLevelSelect,
      isMediumLevelSelect: isLowLevelSelect,
      isHighLevelSelect: isHighLevelSelect,
      isLevelComplete: isLevelComplete,
    );
  }
}
