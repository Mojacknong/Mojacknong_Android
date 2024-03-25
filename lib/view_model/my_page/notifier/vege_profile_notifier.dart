import 'package:flutter/material.dart';

class VegeInfo {
  String veggieName;
  String veggieType;
  String periodStart;
  String periodEnd;
  String image;

  VegeInfo({
    required this.veggieName,
    required this.veggieType,
    required this.periodStart,
    required this.periodEnd,
    required this.image,
  });
}

class VegeInfoNotifier extends ChangeNotifier {
  VegeInfo _vegeInfo = VegeInfo(
    veggieName: "파아하",
    veggieType: "파",
    periodStart: "2023.06.13",
    periodEnd: "2023.12.24",
    image: "",
  );

  VegeInfo get vegeInfo => _vegeInfo;

  void updateVegeInfo(VegeInfo newInfo) {
    _vegeInfo = newInfo;
    notifyListeners();
  }
}
