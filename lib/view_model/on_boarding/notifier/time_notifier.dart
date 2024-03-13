import 'package:farmus/model/on_boarding/on_boarding_time_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeNotifier extends StateNotifier<OnBoardingTimeModel> {
  TimeNotifier()
      : super(
          OnBoardingTimeModel(
              isFirstSelect: false,
              isSecondSelect: false,
              isThirdSelect: false,
              isTimeComplete: false),
        );

  bool _isFirstSelect = false;

  bool get isFirstSelect => _isFirstSelect;

  bool _isSecondSelect = false;

  bool get isSecondSelect => _isSecondSelect;

  bool _isThirdSelect = false;

  bool get isThirdSelect => _isThirdSelect;

  bool _isTimeComplete = false;

  bool get isTimeComplete => _isTimeComplete;

  // 1시간 이상
  void selectFirstBox() {
    if (!_isFirstSelect) {
      _isFirstSelect = true;
      _isSecondSelect = false;
      _isThirdSelect = false;
      update();
    }
  }

  // 10분 - 30분
  void selectSecondBox() {
    if (!_isSecondSelect) {
      _isFirstSelect = false;
      _isSecondSelect = true;
      _isThirdSelect = false;
      update();
    }
  }

  // 10분 미만
  void selectThirdBox() {
    if (!_isThirdSelect) {
      _isFirstSelect = false;
      _isSecondSelect = false;
      _isThirdSelect = true;
      update();
    }
  }

  void update() {
    _isTimeComplete = true;
    state = state.copyWith(
        isFirstSelect: isFirstSelect,
        isSecondSelect: isSecondSelect,
        isThirdSelect: isThirdSelect,
        isTimeComplete: isTimeComplete);
  }
}
