class VegiAddInfoModel {
  final bool isFirstSelect;
  final bool isSecondSelect;
  final bool isThirdSelect;
  final bool isFourthSelect;
  final bool isFiveSelect;
  final bool isSixSelect;
  final bool isVegiAddInfoComplete;

  VegiAddInfoModel({
    required this.isFirstSelect,
    required this.isSecondSelect,
    required this.isThirdSelect,
    required this.isFourthSelect,
    required this.isFiveSelect,
    required this.isSixSelect,
    required this.isVegiAddInfoComplete,
  });

  VegiAddInfoModel copyWith({
    bool? isFirstSelect,
    bool? isSecondSelect,
    bool? isThirdSelect,
    bool? isFourthSelect,
    bool? isFiveSelect,
    bool? isSixSelect,
    bool? isVegiAddInfoComplete,
  }) {
    return VegiAddInfoModel(
      isFirstSelect: isFirstSelect ?? this.isFirstSelect,
      isSecondSelect: isSecondSelect ?? this.isSecondSelect,
      isThirdSelect: isThirdSelect ?? this.isThirdSelect,
      isFourthSelect: isFourthSelect ?? this.isFourthSelect,
      isFiveSelect: isFiveSelect ?? this.isFiveSelect,
      isSixSelect: isSixSelect ?? this.isSixSelect,
      isVegiAddInfoComplete: isVegiAddInfoComplete ?? this.isVegiAddInfoComplete,
    );
  }
}
