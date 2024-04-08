class MyVegeModel {
  final String vegeName;
  final String vegeType;
  final String nowDay;
  final String startDay;

  MyVegeModel({
    required this.vegeName,
    required this.vegeType,
    required this.nowDay,
    required this.startDay,
  });

  MyVegeModel copyWith({
    required String vegeName,
    required String vegeType,
    required String nowDay,
    required String startDay,
  }) {
    return MyVegeModel(
      vegeName: vegeName,
      vegeType: vegeType,
      nowDay: nowDay,
      startDay: startDay,
    );
  }
}
