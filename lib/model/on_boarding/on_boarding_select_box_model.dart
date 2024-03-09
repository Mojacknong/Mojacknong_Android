class OnBoardingSelectBoxModel {
  final String title;
  final bool isSelect;

  OnBoardingSelectBoxModel({
    required this.title,
    required this.isSelect,
  });

  OnBoardingSelectBoxModel copyWith({
    String? title,
    bool? isSelect,
  }) {
    return OnBoardingSelectBoxModel(
      title: title ?? this.title,
      isSelect: isSelect ?? this.isSelect,
    );
  }
}
