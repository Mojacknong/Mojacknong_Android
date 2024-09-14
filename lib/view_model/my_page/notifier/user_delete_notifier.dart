import 'package:farmus/view_model/my_page/my_page_info_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/user_repository.dart';

part 'user_delete_notifier.g.dart';

@riverpod
class UserDeleteNotifier extends _$UserDeleteNotifier {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> userDelete() async {
    await UserRepository.userDelete();
    ref.invalidate(myPageInfoModelProvider);
  }
}
