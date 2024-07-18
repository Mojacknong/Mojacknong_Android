import 'package:farmus/model/my_vege/my_veggie_info_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegeNotifier extends StateNotifier<List<MyVeggieInfoModel>> {
  MyVegeNotifier() : super([]);

  final selectedVege = <MyVeggieInfoModel>{};

  void toggleSelect(MyVeggieInfoModel vege) {
    if (selectedVege.contains(vege)) {
      selectedVege.remove(vege);
    } else {
      selectedVege.add(vege);
    }
    state = [...state];
  }

  bool isVegeSelected(MyVeggieInfoModel vege) {
    return selectedVege.contains(vege);
  }

  void removeAllSelected() {
    state = state.where((vege) => !selectedVege.contains(vege)).toList();
    selectedVege.clear();
  }

  void add(MyVeggieInfoModel newVege) {
    state = [...state, newVege];
  }
}
