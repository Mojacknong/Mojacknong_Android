import 'package:farmus/model/home/vegi_add_info_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegiAddInfoNotifier extends StateNotifier<VegiAddInfoModel> {
  VegiAddInfoNotifier()
      : super(VegiAddInfoModel(
            isFirstSelect: false,
            isSecondSelect: false,
            isThirdSelect: false,
            isFourthSelect: false,
            isFiveSelect: false,
            isSixSelect: false,
            isVegiAddInfoComplete: false));

  bool _isFirstSelect = false;

  bool get isFirstSelect => _isFirstSelect;

  bool _isSecondSelect = false;

  bool get isSecondSelect => _isSecondSelect;

  bool _isThirdSelect = false;

  bool get isThirdSelect => _isThirdSelect;

  bool _isFourthSelect = false;

  bool get isFourthSelect => _isFourthSelect;

  bool _isFiveSelect = false;

  bool get isFiveSelect => _isFiveSelect;

  bool _isSixSelect = false;

  bool get isSixSelect => _isSixSelect;

  bool _isVegiAddInfoComplete = false;

  bool get isVegiAddInfoComplete => _isVegiAddInfoComplete;

  void selectFirstBox() {
    if (!_isFirstSelect) {
      _isFirstSelect = true;
    } else {
      _isFirstSelect = false;
    }
    _isSecondSelect = false;
    _isThirdSelect = false;
    _isFourthSelect = false;
    _isFiveSelect = false;
    _isSixSelect = false;
    update();
  }

  void selectSecondBox() {
    if (!_isSecondSelect) {
      _isSecondSelect = true;
    } else {
      _isSecondSelect = false;
    }
    _isFirstSelect = false;
    _isThirdSelect = false;
    _isFourthSelect = false;
    _isFiveSelect = false;
    _isSixSelect = false;
    update();
  }

  void selectThirdBox() {
    if (!_isThirdSelect) {
      _isThirdSelect = true;
    } else {
      _isThirdSelect = false;
    }
    _isFirstSelect = false;
    _isSecondSelect = false;
    _isFourthSelect = false;
    _isFiveSelect = false;
    _isSixSelect = false;
    update();
  }

  void selectFourthBox() {
    if (!_isFourthSelect) {
      _isFourthSelect = true;
    } else {
      _isFourthSelect = false;
    }
    _isFirstSelect = false;
    _isSecondSelect = false;
    _isThirdSelect = false;
    _isFiveSelect = false;
    _isSixSelect = false;
    update();
  }

  void selectFiveBox() {
    if (!_isFiveSelect) {
      _isFiveSelect = true;
    } else {
      _isFiveSelect = false;
    }
    _isFirstSelect = false;
    _isSecondSelect = false;
    _isThirdSelect = false;
    _isFourthSelect = false;
    _isSixSelect = false;
    update();
  }

  void selectSixBox() {
    if (!_isSixSelect) {
      _isSixSelect = true;
    } else {
      _isSixSelect = false;
    }
    _isFirstSelect = false;
    _isSecondSelect = false;
    _isThirdSelect = false;
    _isFourthSelect = false;
    _isFiveSelect = false;
    update();
  }

  void update() {
    if (_isFirstSelect || _isSecondSelect || _isThirdSelect || _isFourthSelect || _isFiveSelect || _isSixSelect) {
      _isVegiAddInfoComplete = true;
    } else {
      _isVegiAddInfoComplete = false;
    }
    state = state.copyWith(
        isFirstSelect: isFirstSelect,
        isSecondSelect: isSecondSelect,
        isThirdSelect: isThirdSelect,
        isFourthSelect: isFourthSelect,
        isFiveSelect: isFiveSelect,
        isSixSelect: isSixSelect,
        isVegiAddInfoComplete: isVegiAddInfoComplete);
  }

  void reset() {
    state = state.copyWith(
        isFirstSelect: false,
        isSecondSelect: false,
        isThirdSelect: false,
        isFourthSelect: false,
        isFiveSelect: false,
        isSixSelect: false,
        isVegiAddInfoComplete: false);
  }
}
