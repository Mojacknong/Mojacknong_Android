import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/my_vege/my_veggie_info.dart';
import 'notifier/my_vege_delete_notifier.dart';
import 'notifier/my_vege_notifier.dart';

final myVegeProvider =
    StateNotifierProvider<MyVegeNotifier, List<MyVeggieInfo>>((ref) {
  return MyVegeNotifier();
});

final myVegeDeleteProvider =
    StateNotifierProvider<MyVegeDeleteNotifier, bool>((ref) {
  return MyVegeDeleteNotifier();
});
