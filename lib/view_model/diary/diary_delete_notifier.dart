import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../home/notifier/veggie_diary_one_notifier.dart';
import 'farmclub_open_diary_notifier.dart';
import 'my_veggie_diary_notifier.dart';

part 'diary_delete_notifier.g.dart';

@riverpod
class DiaryDeleteNotifier extends _$DiaryDeleteNotifier {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> diaryDelete(int diaryId, int myVeggieId) async {
    await MyVeggieGardenRepository.diaryDelete(diaryId, myVeggieId);
    ref.invalidate(farmclubOpenDiaryModelProvider);
    ref.invalidate(myVeggieDiaryNotifierProvider);
    ref.invalidate(veggieDiaryOneModelProvider);
    ref.invalidateSelf();
  }
}
