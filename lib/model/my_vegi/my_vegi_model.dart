class MyVegiModel {
  final String vegiName;
  final String vegiType;
  final String nowDay;
  final String startDay;

  MyVegiModel({
    required this.vegiName,
    required this.vegiType,
    required this.nowDay,
    required this.startDay,
  });

  MyVegiModel copyWith({
    required String vegiName,
    required String vegiType,
    required String nowDay,
    required String startDay,
  }) {
    return MyVegiModel(
      vegiName: vegiName,
      vegiType: vegiType,
      nowDay: nowDay,
      startDay: startDay,
    );
  }
}
