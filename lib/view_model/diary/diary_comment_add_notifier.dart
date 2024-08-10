import 'package:farmus/model/diary/diary_comment_add_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'diary_comment_add_notifier.g.dart';

@riverpod
class DiaryCommentAddNotifier extends _$DiaryCommentAddNotifier {
  @override
  Future<DiaryCommentAddModel> build() async {
    return DiaryCommentAddModel(isNotEmpty: false);
  }

  void updateComment(String comment) {
    state = AsyncData(
      DiaryCommentAddModel(
          comment: comment, isNotEmpty: comment.isNotEmpty && comment != ''),
    );
  }

}
