import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/my_vege_delete_notifier.dart';

final myVegeDeleteProvider =
    StateNotifierProvider<MyVegeDeleteNotifier, bool>((ref) {
  return MyVegeDeleteNotifier();
});
