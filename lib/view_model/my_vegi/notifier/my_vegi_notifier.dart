import 'package:farmus/model/home/my_vegi_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegiNotifier extends StateNotifier<List<MyVegiModel>> {
  MyVegiNotifier()
      : super([
          MyVegiModel(
              vegiName: "상훈이",
              vegiType: "상추",
              nowDay: "8",
              startDay: "23.06.27"),
          MyVegiModel(
              vegiName: "방울이",
              vegiType: "방울토마토",
              nowDay: "8",
              startDay: "24.03.23"),
          MyVegiModel(
              vegiName: "깨르륵",
              vegiType: "깻잎",
              nowDay: "5",
              startDay: "24.03.25"),
        ]);

  void removeMyVegi(MyVegiModel removeVegi) {
    state = state.where((vegi) => vegi != removeVegi).toList();
  }

  void add(MyVegiModel newVegi) {
    state = [...state, newVegi];
  }
}
