import 'package:flutter/material.dart';

class FarmClubInfo {
  String veggieName;
  String veggieType;
  String periodStart;
  String periodEnd;
  String image;

  FarmClubInfo({
    required this.veggieName,
    required this.veggieType,
    required this.periodStart,
    required this.periodEnd,
    required this.image,
  });
}

class FarmClubInfoNotifier extends ChangeNotifier {
  FarmClubInfo _farmClubInfo = FarmClubInfo(
    veggieName: "상추좋아",
    veggieType: "상추",
    periodStart: "2023.06.13",
    periodEnd: "2023.12.24",
    image: "",
  );

  FarmClubInfo get farmClubInfo => _farmClubInfo;

  void updateVegeInfo(FarmClubInfo newInfo) {
    _farmClubInfo = newInfo;
    notifyListeners();
  }
}
