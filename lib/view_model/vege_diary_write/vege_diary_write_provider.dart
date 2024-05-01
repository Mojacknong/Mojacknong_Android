import 'package:farmus/view_model/vege_diary_write/notifier/vege_diary_write_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/my_vege/vege_delete_success_model.dart';

final vegeDiaryWriteProvider = StateNotifierProvider<VegeDiaryWriteNotifier, VegeImageContentModel>((ref) {
  return VegeDiaryWriteNotifier();
});