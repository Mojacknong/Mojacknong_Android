import 'package:farmus/view_model/vegi_delete/notifier/vegi_delete_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final vegiDeleteProvider = StateNotifierProvider<VegiDeleteNotifier, String>((ref) {
  return VegiDeleteNotifier();
});
