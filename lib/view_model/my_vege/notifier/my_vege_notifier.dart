import 'package:farmus/model/my_vege/my_veggie_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegeNotifier extends StateNotifier<List<MyVeggieInfo>> {
  MyVegeNotifier() : super([]);

  final selectedVege = <MyVeggieInfo>{};

  void toggleSelect(MyVeggieInfo vege) {
    if (selectedVege.contains(vege)) {
      selectedVege.remove(vege);
    } else {
      selectedVege.add(vege);
    }
    state = [...state];
  }

  bool isVegeSelected(MyVeggieInfo vege) {
    return selectedVege.contains(vege);
  }

  void removeAllSelected() {
    state = state.where((vege) => !selectedVege.contains(vege)).toList();
    selectedVege.clear();
  }

  void add(MyVeggieInfo newVege) {
    state = [...state, newVege];
  }
}
