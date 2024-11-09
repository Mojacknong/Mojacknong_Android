import 'package:farmus/model/on_boarding/on_boarding_motivation_model.dart';
import 'package:farmus/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_boarding_motivation_notifier.g.dart';

@riverpod
class OnBoardingMotivationNotifier extends _$OnBoardingMotivationNotifier {
  @override
  Future<OnBoardingMotivationModel> build() async {
    return OnBoardingMotivationModel(
        buttonText: "건너뛰기",
        isFirstSelect: false,
        isSecondSelect: false,
        isThirdSelect: false);
  }

  void selectFirstBox() {
    state = AsyncData(OnBoardingMotivationModel(
        isFirstSelect: !state.value!.isFirstSelect,
        isSecondSelect: state.value!.isSecondSelect,
        isThirdSelect: state.value!.isThirdSelect,
        buttonText: ''));
    updateButtonText();
  }

  void selectSecondBox() {
    state = AsyncData(OnBoardingMotivationModel(
        isFirstSelect: state.value!.isFirstSelect,
        isSecondSelect: !state.value!.isSecondSelect,
        isThirdSelect: state.value!.isThirdSelect,
        buttonText: ''));
    updateButtonText();
  }

  void selectThirdBox() {
    state = AsyncData(OnBoardingMotivationModel(
        isFirstSelect: state.value!.isFirstSelect,
        isSecondSelect: state.value!.isSecondSelect,
        isThirdSelect: !state.value!.isThirdSelect,
        buttonText: ''));
    updateButtonText();
  }

  void updateButtonText() {
    final currentState = state.value;
    String newButtonText = '건너뛰기';

    if (currentState!.isFirstSelect ||
        currentState.isSecondSelect ||
        currentState.isThirdSelect) {
      newButtonText = '다음';
    }

    state = AsyncData(currentState.copyWith(buttonText: newButtonText));
  }


  Future<void> postMotivation(List<String> motivation) async {
    await UserRepository.postMotivation(motivation);
  }
}
