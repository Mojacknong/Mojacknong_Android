import 'package:flutter/material.dart';

class MyPageFarmclubInfo {
  String veggieName;
  String veggieType;
  String periodStart;
  String periodEnd;
  String image;

  MyPageFarmclubInfo({
    required this.veggieName,
    required this.veggieType,
    required this.periodStart,
    required this.periodEnd,
    required this.image,
  });
}

class MyPageFarmclubInfoNotifier extends ChangeNotifier {
  MyPageFarmclubInfo _myPageFarmclubInfo = MyPageFarmclubInfo(
    veggieName: "상추좋아",
    veggieType: "상추",
    periodStart: "2023.06.13",
    periodEnd: "2023.12.24",
    image: "",
  );

  MyPageFarmclubInfo get myPageFarmclubInfo => _myPageFarmclubInfo;

  void updateVegeInfo(MyPageFarmclubInfo newInfo) {
    _myPageFarmclubInfo = newInfo;
    notifyListeners();
  }
}
