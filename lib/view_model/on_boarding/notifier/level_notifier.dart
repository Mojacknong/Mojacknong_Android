import 'package:farmus/model/on_boarding/on_boarding_level_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LevelNotifier extends StateNotifier<OnBoardingLevelModel> {
  LevelNotifier()
      : super(
          OnBoardingLevelModel(
            isFirstSelect: false,
            isSecondSelect: false,
            isThirdSelect: false,
            isFourthSelect: false,
            isLevelComplete: false,
            time: 0,
          ),
        );

  bool _isFirstSelect = false;

  bool get isFirstSelect => _isFirstSelect;

  bool _isSecondSelect = false;

  bool get isSecondSelect => _isSecondSelect;

  bool _isThirdSelect = false;

  bool get isThirdSelect => _isThirdSelect;

  bool _isFourthSelect = false;

  bool get isFourthSelect => _isFourthSelect;

  bool _isLevelComplete = false;

  bool get isLevelComplete => _isLevelComplete;

  // 입문
  void selectFirstBox() {
    if (!_isFirstSelect) {
      _isFirstSelect = true;
      _isSecondSelect = false;
      _isThirdSelect = false;
      _isFourthSelect = false;
      update();
    }
  }

  // 초보
  void selectSecondBox() {
    if (!_isSecondSelect) {
      _isFirstSelect = false;
      _isSecondSelect = true;
      _isThirdSelect = false;
      _isFourthSelect = false;
      update();
    }
  }

  // 중급
  void selectThirdBox() {
    if (!_isThirdSelect) {
      _isFirstSelect = false;
      _isSecondSelect = false;
      _isThirdSelect = true;
      _isFourthSelect = false;
      update();
    }
  }

  // 고수
  void selectFourthBox() {
    if (!_isFourthSelect) {
      _isFirstSelect = false;
      _isSecondSelect = false;
      _isThirdSelect = false;
      _isFourthSelect = true;
      update();
    }
  }

  void update() {
    _isLevelComplete = true;
    state = state.copyWith(
        isFirstSelect: isFirstSelect,
        isSecondSelect: isSecondSelect,
        isThirdSelect: isThirdSelect,
        isFourthSelect: isFourthSelect,
        isLevelComplete: isLevelComplete);
  }
}
