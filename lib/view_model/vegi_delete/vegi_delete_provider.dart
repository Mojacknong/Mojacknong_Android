import 'package:farmus/model/my_vegi/vegi_delete_success_model.dart';
import 'package:farmus/view_model/vegi_delete/notifier/vegi_delete_notifier.dart';
import 'package:farmus/view_model/vegi_delete/notifier/vegi_delete_success_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final vegiDeleteProvider =
    StateNotifierProvider<VegiDeleteNotifier, String>((ref) {
  return VegiDeleteNotifier();
});

final vegiDeleteSuccessProvider =
    StateNotifierProvider<VegiDeleteSuccessNotifier, VegiDeleteSuccessModel>(
        (ref) {
  return VegiDeleteSuccessNotifier();
});
