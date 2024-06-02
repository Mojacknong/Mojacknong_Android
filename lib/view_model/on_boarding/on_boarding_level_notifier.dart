import 'package:farmus/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/on_boarding/on_boarding_level_model.dart';

part 'on_boarding_level_notifier.g.dart';

@riverpod
class OnBoardingLevelNotifier extends _$OnBoardingLevelNotifier {
  @override
  Future<OnBoardingLevelModel> build() async {
    return OnBoardingLevelModel(
      isManyTimeSelect: false,
      isMediumTimeSelect: false,
      isSmallTimeSelect: false,
      isTimeComplete: false,
      isFirstLevelSelect: false,
      isLowLevelSelect: false,
      isMediumLevelSelect: false,
      isHighLevelSelect: false,
      isLevelComplete: false,
    );
  }

  void selectManyTimeBox() {
    state = AsyncData(OnBoardingLevelModel(
      isManyTimeSelect: true,
      isMediumTimeSelect: false,
      isSmallTimeSelect: false,
      isTimeComplete: true,
      isFirstLevelSelect: false,
      isLowLevelSelect: false,
      isMediumLevelSelect: false,
      isHighLevelSelect: false,
      isLevelComplete: false,
    ));
  }

  void selectMediumTimeBox() {
    state = AsyncData(OnBoardingLevelModel(
      isManyTimeSelect: false,
      isMediumTimeSelect: true,
      isSmallTimeSelect: false,
      isTimeComplete: true,
      isFirstLevelSelect: false,
      isLowLevelSelect: false,
      isMediumLevelSelect: false,
      isHighLevelSelect: false,
      isLevelComplete: false,
    ));
  }

  void selectSmallTimeBox() {
    state = AsyncData(OnBoardingLevelModel(
      isManyTimeSelect: false,
      isMediumTimeSelect: false,
      isSmallTimeSelect: true,
      isTimeComplete: true,
      isFirstLevelSelect: false,
      isLowLevelSelect: false,
      isMediumLevelSelect: false,
      isHighLevelSelect: false,
      isLevelComplete: false,
    ));
  }

  void selectFirstLevelBox() {
    state = AsyncData(OnBoardingLevelModel(
      isManyTimeSelect: state.value!.isManyTimeSelect,
      isMediumTimeSelect: state.value!.isMediumTimeSelect,
      isSmallTimeSelect: state.value!.isSmallTimeSelect,
      isTimeComplete: state.value!.isTimeComplete,
      isFirstLevelSelect: true,
      isLowLevelSelect: false,
      isMediumLevelSelect: false,
      isHighLevelSelect: false,
      isLevelComplete: true,
    ));
  }

  void selectLowLevelBox() {
    state = AsyncData(OnBoardingLevelModel(
      isManyTimeSelect: state.value!.isManyTimeSelect,
      isMediumTimeSelect: state.value!.isMediumTimeSelect,
      isSmallTimeSelect: state.value!.isSmallTimeSelect,
      isTimeComplete: state.value!.isTimeComplete,
      isFirstLevelSelect: false,
      isLowLevelSelect: true,
      isMediumLevelSelect: false,
      isHighLevelSelect: false,
      isLevelComplete: true,
    ));
  }

  void selectMediumLevelBox() {
    state = AsyncData(OnBoardingLevelModel(
      isManyTimeSelect: state.value!.isManyTimeSelect,
      isMediumTimeSelect: state.value!.isMediumTimeSelect,
      isSmallTimeSelect: state.value!.isSmallTimeSelect,
      isTimeComplete: state.value!.isTimeComplete,
      isFirstLevelSelect: false,
      isLowLevelSelect: false,
      isMediumLevelSelect: true,
      isHighLevelSelect: false,
      isLevelComplete: true,
    ));
  }

  void selectHighLevelBox() {
    state = AsyncData(OnBoardingLevelModel(
      isManyTimeSelect: state.value!.isManyTimeSelect,
      isMediumTimeSelect: state.value!.isMediumTimeSelect,
      isSmallTimeSelect: state.value!.isSmallTimeSelect,
      isTimeComplete: state.value!.isTimeComplete,
      isFirstLevelSelect: false,
      isLowLevelSelect: false,
      isMediumLevelSelect: false,
      isHighLevelSelect: true,
      isLevelComplete: true,
    ));
  }

  Future<void> postLevel() async {
    int time = 0;
    String skill = '';
    if (state.value!.isManyTimeSelect) {
      time = 2;
    }
    if (state.value!.isMediumTimeSelect) {
      time = 1;
    }
    if (state.value!.isSmallTimeSelect) {
      time = 0;
    }

    if (state.value!.isFirstLevelSelect) {
      skill = '홈파밍 입문';
    }
    if (state.value!.isLowLevelSelect) {
      skill = '홈파밍 초보';
    }
    if (state.value!.isMediumLevelSelect) {
      skill = '홈파밍 중급';
    }
    if (state.value!.isHighLevelSelect) {
      skill = '홈파밍 고수';
    }

    final response = await UserRepository.postLevel(time, skill);
    print(response.body);
  }
}
