import 'package:farmus/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logout_notifier.g.dart';

@riverpod
class LogoutNotifier extends _$LogoutNotifier {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> logout() async {
    await UserRepository.logout();
  }
}
