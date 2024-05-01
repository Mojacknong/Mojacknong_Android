import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/my_vege/vege_delete_success_model.dart';
import 'notifier/vege_delete_notifier.dart';
import 'notifier/vege_delete_success_notifier.dart';

final vegeDeleteReasonProvider =
    StateNotifierProvider<VegeDeleteReasonNotifier, String>((ref) {
  return VegeDeleteReasonNotifier();
});

final vegeDeleteSuccessProvider =
    StateNotifierProvider<VegeDeleteSuccessNotifier, VegeDeleteSuccessModel>(
        (ref) {
  return VegeDeleteSuccessNotifier();
});

final vegeDeleteFailProvider =
    StateNotifierProvider<VegeDeleteReasonNotifier, String>((ref) {
  return VegeDeleteReasonNotifier();
});
