import 'dart:io';

import 'package:farmus/model/home/diary_write_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_diary_notifier.g.dart';

@riverpod
class PostDiaryNotifier extends _$PostDiaryNotifier {
  @override
  Future<DiaryWriteModel> build() async {
    return DiaryWriteModel(
        file: File(''), content: '', isOpen: false, state: '', myVeggieId: -1);
  }

  Future<void> postDiary(DiaryWriteModel diary) async {
    await MyVeggieGardenRepository.postDiary(diary);
  }
}
