class FarmclubOpenInfoModel {
  final bool isButtonPressed;
  final String name;
  final String num;
  final String intro;
  final String date;
  final bool isFarmclubOpenInfoComplete;

  FarmclubOpenInfoModel({
    this.isButtonPressed = false,
    this.name = '',
    this.num = '',
    this.intro = '',
    this.date = '',
    this.isFarmclubOpenInfoComplete = false,
  });

  FarmclubOpenInfoModel copyWith({
    bool? isButtonPressed,
    String? name,
    String? num,
    String? intro,
    String? date,
    bool? isFarmclubOpenInfoComplete,
  }) {
    return FarmclubOpenInfoModel(
      isButtonPressed: isButtonPressed ?? this.isButtonPressed,
      name: name ?? this.name,
      num: num ?? this.num,
      intro: intro ?? this.intro,
      date: date ?? this.date,
      isFarmclubOpenInfoComplete:
          isFarmclubOpenInfoComplete ?? this.isFarmclubOpenInfoComplete,
    );
  }
}
