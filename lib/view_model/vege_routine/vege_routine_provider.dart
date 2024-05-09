import 'package:farmus/model/home/vege_routine_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/vege_routine_create_notifier.dart';

final vegeRoutineProvider =
    StateNotifierProvider<VegeRoutineCreateNotifier, VegeRoutineModel>((ref) {
  return VegeRoutineCreateNotifier();
});
