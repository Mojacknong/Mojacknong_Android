import 'package:farmus/model/my_vege/vege_diary_write_model.dart';
import 'package:farmus/view_model/vege_diary_write/notifier/vege_diary_write_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final vegeDiaryWriteProvider =
    StateNotifierProvider<VegeDiaryWriteNotifier, VegeDiaryWriteModel>((ref) {
  return VegeDiaryWriteNotifier();
});
