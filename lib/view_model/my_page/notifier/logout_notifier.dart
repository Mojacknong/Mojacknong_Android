import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:farmus/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logout_notifier.g.dart';

@riverpod
class DiaryLikeNotifier extends _$DiaryLikeNotifier {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> logout() async {
    await UserRepository.logout();
  }
}
