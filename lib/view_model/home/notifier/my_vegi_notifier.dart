import 'package:farmus/model/home/my_vegi_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegiNotifier extends StateNotifier<MyVegiModel> {
  MyVegiNotifier() : super(MyVegiModel(vegiName: ''));


}
