import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../model/diary/diary_comment_model.dart';
import '../../repository/my_veggie_garden_repository.dart';

part 'diary_comment_notifier.g.dart';

@riverpod
Future<DiaryDataModel> diaryCommentNotifier(
    DiaryCommentNotifierRef ref, int diaryId) async {
  final response = await MyVeggieGardenRepository.diaryComment(diaryId);

  final json = jsonDecode(response) as Map<String, dynamic>;

  final data = json['data'] as Map<String, dynamic>;

  final diaryData = DiaryDataModel.fromJson(data);

  return diaryData;
}
