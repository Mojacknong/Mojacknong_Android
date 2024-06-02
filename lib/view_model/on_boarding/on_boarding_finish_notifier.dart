import 'package:farmus/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_boarding_finish_notifier.g.dart';

@riverpod
class OnBoardingFinishNotifier extends _$OnBoardingFinishNotifier {
  @override
  Future<String> build() async {
    return '';
  }

  Future<void> userInfo() async {
    final response = await UserRepository.userInfo();
    print(response);
  }

  Future<void> onBoardingComplete() async {
    final response = await UserRepository.onBoardingComplete();
    print(response);
  }
}
