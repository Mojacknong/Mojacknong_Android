import 'package:farmus/model/my_page/my_page_nickename_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/my_page_repository.dart';

part 'my_page_user_nickname_model_notifier.g.dart';

@riverpod
class MyPageUserNicknameProfileModelNotifier
    extends _$MyPageUserNicknameProfileModelNotifier {
  Future<MyPageNickenameModel> build() async {
    return const MyPageNickenameModel( nickname: 'nickname');
  }
  Future<void> postUserNickname(MyPageNickenameModel nickname) async {
    try {
      await MyPageRepository.changeMyNickname(nickname);
    } catch (e) {
      throw Exception("Failed to update nickname: $e");
    }
  }

}
