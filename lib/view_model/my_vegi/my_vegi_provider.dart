import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/my_vegi/my_vegi_model.dart';
import 'notifier/my_vegi_delete_notifier.dart';
import 'notifier/my_vegi_notifier.dart';

final myVegiProvider =
    StateNotifierProvider<MyVegiNotifier, List<MyVegiModel>>((ref) {
  return MyVegiNotifier();
});

final myVegiDeleteProvider =
    StateNotifierProvider<MyVegiDeleteNotifier, bool>((ref) {
  return MyVegiDeleteNotifier();
});
