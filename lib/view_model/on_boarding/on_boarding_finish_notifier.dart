import 'dart:convert' as convert;

import 'package:farmus/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_boarding_finish_notifier.g.dart';

@riverpod
class OnBoardingFinishNotifier extends _$OnBoardingFinishNotifier {
  @override
  Future<String> build() async {
    return '';
  }

  Future<String> fetchNickName() async {
    final response = await UserRepository.userInfo();
    print(response);
    var jsonResponse =
        convert.jsonDecode(response) as Map<String, dynamic>;
    print(jsonResponse['data']['nickName']);
    return jsonResponse['data']['nickName'];
  }

  Future<void> userInfo() async {
    state = AsyncData(await fetchNickName());
  }

  Future<void> onBoardingComplete() async {
    final response = await UserRepository.onBoardingComplete();
    print(response);
  }
}
