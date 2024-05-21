import 'package:farmus/model/mission/mission_write_model.dart';
import 'package:farmus/view_model/mission_write/notifier/mission_write_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final missionWriteProvider =
    StateNotifierProvider.autoDispose<MissionWriteNotifier, MissionWriteModel>((ref) {
  return MissionWriteNotifier();
});
