import 'dart:convert' as convert;

import 'package:farmus/repository/user_repository.dart';
import 'package:farmus/view_model/my_page/my_page_info_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_boarding_finish_notifier.g.dart';

@riverpod
class OnBoardingFinishNotifier extends _$OnBoardingFinishNotifier {
  @override
  Future<String> build() async {
    return fetchNickName();
  }

  Future<String> fetchNickName() async {
    final response = await UserRepository.userInfo();
    var jsonResponse = convert.jsonDecode(response) as Map<String, dynamic>;

    if (jsonResponse['data'] == null) {
      throw Exception('Data is null');
    }
    if (jsonResponse['data']['nickName'] == null) {
      throw Exception('NickName is null');
    }

    return jsonResponse['data']['nickName'];
  }

  Future<void> userInfo() async {
    state = AsyncData(await fetchNickName());
  }

  Future<void> onBoardingComplete() async {
    await UserRepository.onBoardingComplete();
    ref.invalidate(myPageInfoModelProvider);
  }
}
