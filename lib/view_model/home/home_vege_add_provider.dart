import 'package:farmus/model/home/vege_add_info_model.dart';
import 'package:farmus/view_model/home/notifier/vege_add_info_notifier.dart';
import 'package:farmus/view_model/home/notifier/vege_add_move_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeVegeInfoAddProvider =
    StateNotifierProvider<VegeAddInfoNotifier, VegeAddInfoModel>((ref) {
  return VegeAddInfoNotifier();
});

final homeVegeAddMoveProvider =
    StateNotifierProvider<VegeAddMoveNotifier, String>((ref) {
  return VegeAddMoveNotifier();
});
