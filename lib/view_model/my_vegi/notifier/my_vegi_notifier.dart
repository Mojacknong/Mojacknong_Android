import 'package:farmus/model/my_vegi/my_vegi_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegiNotifier extends StateNotifier<List<MyVegiModel>> {
  MyVegiNotifier()
      : super([
          MyVegiModel(
            vegiName: "상훈이",
            vegiType: "상추",
            nowDay: "8",
            startDay: "23.06.27",
          ),
          MyVegiModel(
            vegiName: "방울이",
            vegiType: "방울토마토",
            nowDay: "8",
            startDay: "24.03.23",
          ),
          MyVegiModel(
            vegiName: "깨르륵",
            vegiType: "깻잎",
            nowDay: "5",
            startDay: "24.03.25",
          ),
        ]);

  final selectedVegi = <MyVegiModel>{};

  void toggleSelect(MyVegiModel vegi) {
    if (selectedVegi.contains(vegi)) {
      selectedVegi.remove(vegi);
    } else {
      selectedVegi.add(vegi);
    }
    state = [...state];
  }

  bool isVegiSelected(MyVegiModel vegi) {
    return selectedVegi.contains(vegi);
  }

  void removeAllSelected() {
    state = state.where((vegi) => !selectedVegi.contains(vegi)).toList();
    selectedVegi.clear();
  }

  void add(MyVegiModel newVegi) {
    state = [...state, newVegi];
  }
}
