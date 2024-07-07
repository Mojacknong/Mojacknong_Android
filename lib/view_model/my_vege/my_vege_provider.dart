import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/my_vege/my_veggie_info_model.dart';
import 'notifier/my_vege_delete_notifier.dart';
import 'notifier/my_vege_notifier.dart';

final myVegeProvider =
    StateNotifierProvider<MyVegeNotifier, List<MyVeggieInfoModel>>((ref) {
  return MyVegeNotifier();
});

final myVegeDeleteProvider =
    StateNotifierProvider<MyVegeDeleteNotifier, bool>((ref) {
  return MyVegeDeleteNotifier();
});
