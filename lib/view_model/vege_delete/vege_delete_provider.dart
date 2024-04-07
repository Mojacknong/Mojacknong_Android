import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/my_vege/vege_delete_success_model.dart';
import 'notifier/vege_delete_notifier.dart';
import 'notifier/vege_delete_success_notifier.dart';

final vegeDeleteProvider =
    StateNotifierProvider<VegeDeleteNotifier, String>((ref) {
  return VegeDeleteNotifier();
});

final vegeDeleteSuccessProvider =
    StateNotifierProvider<VegeDeleteSuccessNotifier, VegeDeleteSuccessModel>(
        (ref) {
  return VegeDeleteSuccessNotifier();
});
