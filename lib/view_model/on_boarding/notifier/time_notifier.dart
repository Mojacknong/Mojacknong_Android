import 'package:farmus/model/on_boarding/on_boarding_time_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeNotifier extends StateNotifier<OnBoardingTimeModel> {
  TimeNotifier()
      : super(
          OnBoardingTimeModel(
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
    state = state.copyWith(isFirstSelect: isFirstSelect);
  }

  // 건강과 웰빙
  void selectSecondBox() {
    _isSecondSelect = !_isSecondSelect;
    state = state.copyWith(isSecondSelect: isSecondSelect);
  }

  // 심리적 안정
  void selectThirdBox() {
    _isThirdSelect = !_isThirdSelect;
    state = state.copyWith(isThirdSelect: isThirdSelect);
  }
}
