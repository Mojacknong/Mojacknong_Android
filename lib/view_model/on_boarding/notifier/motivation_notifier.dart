import 'package:farmus/model/on_boarding/on_boarding_select_box_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MotivationNotifier extends StateNotifier<OnBoardingSelectBoxModel> {
  MotivationNotifier()
      : super(OnBoardingSelectBoxModel(
          title: "",
          isSelect: false,
        ));

  bool _isSelect = false;

  bool get isSelect => _isSelect;

  void selectBox() {
    _isSelect = !_isSelect;

    state = state.copyWith(isSelect: isSelect);
  }
}
