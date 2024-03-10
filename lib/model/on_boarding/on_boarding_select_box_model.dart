class OnBoardingMotivationModel {
  final String title;
  final bool isFirstSelect;
  final bool isSecondSelect;
  final bool isThirdSelect;

  OnBoardingMotivationModel({
    required this.title,
    required this.isFirstSelect,
    required this.isSecondSelect,
    required this.isThirdSelect,
  });

  OnBoardingMotivationModel copyWith({
    String? title,
    bool? isFirstSelect,
    bool? isSecondSelect,
    bool? isThirdSelect,
  }) {
    return OnBoardingMotivationModel(
      title: title ?? this.title,
      isFirstSelect: isFirstSelect ?? this.isFirstSelect,
      isSecondSelect: isSecondSelect ?? this.isSecondSelect,
      isThirdSelect: isThirdSelect ?? this.isThirdSelect,
    );
  }
}
