import 'package:farmus/view_model/home/notifier/vege_add_move_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeVegeAddMoveProvider =
    StateNotifierProvider.autoDispose<VegeAddMoveNotifier, String>((ref) {
  return VegeAddMoveNotifier();
});
