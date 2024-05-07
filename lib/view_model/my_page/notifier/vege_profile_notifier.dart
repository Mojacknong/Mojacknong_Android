import 'package:farmus/view/vege_history/component/vege_info.dart';
import 'package:flutter/material.dart';

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
