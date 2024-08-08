import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/diary/diary_comment_model.dart';
import '../../repository/my_veggie_garden_repository.dart';

part 'diary_comment_notifier.g.dart';

@riverpod
Future<List<DiaryCommentModel>> diaryCommentNotifier(
    DiaryCommentNotifierRef ref, int diaryId) async {
  final response = await MyVeggieGardenRepository.diaryComment(diaryId);
  final json = jsonDecode(response) as Map<String, dynamic>;

  final dataList = json['data'] as List<dynamic>;
  final List<DiaryCommentModel> models = dataList
      .map((data) => DiaryCommentModel.fromJson(data as Map<String, dynamic>))
      .toList();

  return models;
}
