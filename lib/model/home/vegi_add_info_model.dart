class VegiAddInfoModel {
  final bool isFirstSelect;
  final bool isSecondSelect;
  final bool isThirdSelect;
  final bool isFourthSelect;
  final bool isFiveSelect;
  final bool isSixSelect;
  final bool isVegiAddInfoComplete;
  final String name;
  final String date;

  VegiAddInfoModel({
    required this.isFirstSelect,
    required this.isSecondSelect,
    required this.isThirdSelect,
    required this.isFourthSelect,
    required this.isFiveSelect,
    required this.isSixSelect,
    required this.isVegiAddInfoComplete,
    required this.name,
    required this.date
  });

  VegiAddInfoModel copyWith({
    bool? isFirstSelect,
    bool? isSecondSelect,
    bool? isThirdSelect,
    bool? isFourthSelect,
    bool? isFiveSelect,
    bool? isSixSelect,
    bool? isVegiAddInfoComplete,
    String? name,
    String? date,
  }) {
    return VegiAddInfoModel(
      isFirstSelect: isFirstSelect ?? this.isFirstSelect,
      isSecondSelect: isSecondSelect ?? this.isSecondSelect,
      isThirdSelect: isThirdSelect ?? this.isThirdSelect,
      isFourthSelect: isFourthSelect ?? this.isFourthSelect,
      isFiveSelect: isFiveSelect ?? this.isFiveSelect,
      isSixSelect: isSixSelect ?? this.isSixSelect,
      isVegiAddInfoComplete: isVegiAddInfoComplete ?? this.isVegiAddInfoComplete,
      name: name ?? this.name,
      date: date ?? this.date,
    );
  }
}
