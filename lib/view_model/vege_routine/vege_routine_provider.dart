import 'package:farmus/model/home/vege_routine_model.dart';
import 'package:farmus/view_model/vege_routine/notifier/vege_routine_edit_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/vege_routine_create_notifier.dart';

final vegeRoutineCreateProvider =
    StateNotifierProvider<VegeRoutineCreateNotifier, VegeRoutineModel>((ref) {
  return VegeRoutineCreateNotifier();
});

final vegeRoutineEditProvider = StateNotifierProviderFamily<VegeRoutineEditNotifier, VegeRoutineModel, String?>(
      (ref, initialRoutineName) {
    return VegeRoutineEditNotifier(initName: initialRoutineName ?? '');
  },
);
