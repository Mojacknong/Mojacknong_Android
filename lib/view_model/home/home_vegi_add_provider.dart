import 'package:farmus/model/home/vegi_add_info_model.dart';
import 'package:farmus/view_model/home/notifier/vegi_add_info_notifier.dart';
import 'package:farmus/view_model/home/notifier/vegi_add_move_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeVegiInfoAddProvider =
    StateNotifierProvider<VegiAddInfoNotifier, VegiAddInfoModel>((ref) {
  return VegiAddInfoNotifier();
});

final homeVegiAddMoveProvider =
    StateNotifierProvider<VegiAddMoveNotifier, String>((ref) {
  return VegiAddMoveNotifier();
});
