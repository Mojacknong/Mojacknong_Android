import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/my_vege/my_vege_model.dart';

class MyVegeNotifier extends StateNotifier<List<MyVegeModel>> {
  MyVegeNotifier()
      : super([
          MyVegeModel(
            vegeName: "상훈이",
            vegeType: "상추",
            nowDay: "8",
            startDay: "23.06.27",
          ),
          MyVegeModel(
            vegeName: "방울이",
            vegeType: "방울토마토",
            nowDay: "8",
            startDay: "24.03.23",
          ),
          MyVegeModel(
            vegeName: "깨르륵",
            vegeType: "깻잎",
            nowDay: "5",
            startDay: "24.03.25",
          ),
        ]);

  final selectedVege = <MyVegeModel>{};

  void toggleSelect(MyVegeModel vege) {
    if (selectedVege.contains(vege)) {
      selectedVege.remove(vege);
    } else {
      selectedVege.add(vege);
    }
    state = [...state];
  }

  bool isVegeSelected(MyVegeModel vege) {
    return selectedVege.contains(vege);
  }

  void removeAllSelected() {
    state = state.where((vege) => !selectedVege.contains(vege)).toList();
    selectedVege.clear();
  }

  void add(MyVegeModel newVege) {
    state = [...state, newVege];
  }
}
