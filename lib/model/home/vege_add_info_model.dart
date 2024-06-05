class VegeAddInfoModel {
  final bool? isFirstSelect;
  final bool? isSecondSelect;
  final bool? isThirdSelect;
  final bool? isFourthSelect;
  final bool? isFiveSelect;
  final bool? isSixSelect;
  final bool isVegeSelectComplete;
  final String name;
  final String date;
  final bool isVegeAddInfoComplete;
  final int? selectedIndex;

  VegeAddInfoModel(
      {this.isFirstSelect,
      this.isSecondSelect,
      this.isThirdSelect,
      this.isFourthSelect,
      this.isFiveSelect,
      this.isSixSelect,
      required this.isVegeSelectComplete,
      required this.name,
      required this.date,
      required this.isVegeAddInfoComplete,
      this.selectedIndex});

  VegeAddInfoModel copyWith({
    bool? isFirstSelect,
    bool? isSecondSelect,
    bool? isThirdSelect,
    bool? isFourthSelect,
    bool? isFiveSelect,
    bool? isSixSelect,
    bool? isVegeSelectComplete,
    String? name,
    String? date,
    bool? isVegeAddInfoComplete,
    int? selectedIndex,
  }) {
    return VegeAddInfoModel(
        isFirstSelect: isFirstSelect ?? this.isFirstSelect,
        isSecondSelect: isSecondSelect ?? this.isSecondSelect,
        isThirdSelect: isThirdSelect ?? this.isThirdSelect,
        isFourthSelect: isFourthSelect ?? this.isFourthSelect,
        isFiveSelect: isFiveSelect ?? this.isFiveSelect,
        isSixSelect: isSixSelect ?? this.isSixSelect,
        isVegeSelectComplete: isVegeSelectComplete ?? this.isVegeSelectComplete,
        name: name ?? this.name,
        date: date ?? this.date,
        isVegeAddInfoComplete:
            isVegeAddInfoComplete ?? this.isVegeAddInfoComplete,
        selectedIndex: selectedIndex ?? this.selectedIndex);
  }
}
