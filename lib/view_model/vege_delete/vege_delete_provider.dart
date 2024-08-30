import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/vege_delete_notifier.dart';

final vegeDeleteReasonProvider =
    StateNotifierProvider.autoDispose<VegeDeleteReasonNotifier, String>((ref) {
  return VegeDeleteReasonNotifier();
});

final vegeDeleteFailProvider =
    StateNotifierProvider.autoDispose<VegeDeleteReasonNotifier, String>((ref) {
  return VegeDeleteReasonNotifier();
});
