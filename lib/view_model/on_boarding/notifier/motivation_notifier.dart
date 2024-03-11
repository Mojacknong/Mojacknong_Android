import 'package:farmus/model/on_boarding/on_boarding_select_box_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MotivationNotifier extends StateNotifier<OnBoardingMotivationModel> {
  MotivationNotifier()
      : super(
          OnBoardingMotivationModel(
              buttonText: "건너뛰기",
              isFirstSelect: false,
              isSecondSelect: false,
              isThirdSelect: false),
        );

  bool _isFirstSelect = false;

  bool get isFirstSelect => _isFirstSelect;

  bool _isSecondSelect = false;

  bool get isSecondSelect => _isSecondSelect;

  bool _isThirdSelect = false;

  bool get isThirdSelect => _isThirdSelect;

  // 알뜰살뜰
  void selectFirstBox() {
    _isFirstSelect = !_isFirstSelect;
    updateButtonText();
    state = state.copyWith(isFirstSelect: isFirstSelect);
  }

  // 건강과 웰빙
  void selectSecondBox() {
    _isSecondSelect = !_isSecondSelect;
    updateButtonText();
    state = state.copyWith(isSecondSelect: isSecondSelect);
  }

  // 심리적 안정
  void selectThirdBox() {
    _isThirdSelect = !_isThirdSelect;
    updateButtonText();
    state = state.copyWith(isThirdSelect: isThirdSelect);
  }

  // 버튼 텍스트 업데이트
  void updateButtonText() {
    if (_isFirstSelect || _isSecondSelect || _isThirdSelect) {
      state = state.copyWith(buttonText: "다음");
    } else {
      state = state.copyWith(buttonText: "건너뛰기");
    }
  }
}
