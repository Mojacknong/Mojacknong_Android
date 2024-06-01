import 'dart:convert';

import 'package:farmus/repository/on_boarding_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_boarding_motivation_notifier.g.dart';

@riverpod
class OnBoardingMotivationNotifier extends _$OnBoardingMotivationNotifier {
  @override
  Future<List<String>> build() async {
    return [];
  }

  Future<void> postMotivation(List<String> motivation) async {
    final response = await OnBoardingRepository.postMotivation(motivation);
    print(response.body);
  }
}
