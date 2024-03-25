import 'package:farmus/model/home/my_vegi_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegiNotifier extends StateNotifier<List<MyVegiModel>> {
  MyVegiNotifier() : super([MyVegiModel(vegiName: '', nowDay: '', startDay: '', vegiType: '',)]);

  void add(String item) {
    state = [...state];
  }
}
