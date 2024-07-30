import 'package:farmus/model/home/routine_model.dart';
import 'package:farmus/repository/routine_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routine_add_notifier.g.dart';

@riverpod
class RoutineAddNotifier extends _$RoutineAddNotifier {
  @override
  Future<RoutineModel> build() async {
    return RoutineModel(routineName: '', isComplete: false);
  }

  Future<void> routineAdd(
    int myVeggieId,
    String content,
    int period,
  ) async {
    await RoutineRepository.routineAdd(myVeggieId, content, period);
  }
}
