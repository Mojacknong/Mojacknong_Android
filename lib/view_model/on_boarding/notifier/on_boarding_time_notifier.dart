import 'package:farmus/repository/on_boarding_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/on_boarding/on_boarding_time_model.dart';

part 'on_boarding_time_notifier.g.dart';

@riverpod
class OnBoardingTimeNotifier extends _$OnBoardingTimeNotifier {
  @override
  Future<OnBoardingTimeModel> build() async {
    return OnBoardingTimeModel(
        isFirstSelect: false,
        isSecondSelect: false,
        isThirdSelect: false,
        isTimeComplete: false);
  }

  // 1시간 이상
  void selectFirstBox() {
    state = AsyncData(OnBoardingTimeModel(
        isFirstSelect: true,
        isSecondSelect: false,
        isThirdSelect: false,
        isTimeComplete: true));
  }

  // 10분 - 30분
  void selectSecondBox() {
    state = AsyncData(OnBoardingTimeModel(
        isFirstSelect: false,
        isSecondSelect: true,
        isThirdSelect: false,
        isTimeComplete: true));
  }

  // 10분 미만
  void selectThirdBox() {
    state = AsyncData(OnBoardingTimeModel(
        isFirstSelect: false,
        isSecondSelect: false,
        isThirdSelect: true,
        isTimeComplete: true));
  }

  Future<void> postLevel(int time, String skill) async {
    if (state.value!.isFirstSelect) {
      time = 2;
    }
    if (state.value!.isSecondSelect) {
      time = 1;
    }
    if (state.value!.isThirdSelect) {
      time = 0;
    }

    final response = await OnBoardingRepository.postLevel(time, 'skill');
    print(response.body);
  }
}
