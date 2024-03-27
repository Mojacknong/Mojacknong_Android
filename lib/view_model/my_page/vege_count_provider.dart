import 'package:farmus/view_model/my_page/notifier/vege_count_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final vegeCountProvider = StateNotifierProvider<VegeCountNotifier, int>((ref) {
  return VegeCountNotifier();
});
