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
          isVegiSelectComplete: false,
          name: '',
          date: '',
          isVegiAddInfoComplete: false,
        ));

  void _selectBox(int boxIndex) {
    final newState = state.copyWith(
      isFirstSelect: false,
      isSecondSelect: false,
      isThirdSelect: false,
      isFourthSelect: false,
      isFiveSelect: false,
      isSixSelect: false,
      isVegiAddInfoComplete: false,
    );

    switch (boxIndex) {
      case 1:
        state = newState.copyWith(isFirstSelect: true);
        break;
      case 2:
        state = newState.copyWith(isSecondSelect: true);
        break;
      case 3:
        state = newState.copyWith(isThirdSelect: true);
        break;
      case 4:
        state = newState.copyWith(isFourthSelect: true);
        break;
      case 5:
        state = newState.copyWith(isFiveSelect: true);
        break;
      case 6:
        state = newState.copyWith(isSixSelect: true);
        break;
      default:
        break;
    }

    _updateSelectStatus();
  }

  void selectFirstBox() => _selectBox(1);

  void selectSecondBox() => _selectBox(2);

  void selectThirdBox() => _selectBox(3);

  void selectFourthBox() => _selectBox(4);

  void selectFiveBox() => _selectBox(5);

  void selectSixBox() => _selectBox(6);

  void _updateSelectStatus() {
    state = state.copyWith(
        isVegiSelectComplete: state.isFirstSelect ||
            state.isSecondSelect ||
            state.isThirdSelect ||
            state.isFourthSelect ||
            state.isFiveSelect ||
            state.isSixSelect);
  }

  void reset() {
    state = VegiAddInfoModel(
        isFirstSelect: false,
        isSecondSelect: false,
        isThirdSelect: false,
        isFourthSelect: false,
        isFiveSelect: false,
        isSixSelect: false,
        isVegiSelectComplete: false,
        name: '',
        date:'',
        isVegiAddInfoComplete: false);
  }

  void updateNickname(String name) {
    state = state.copyWith(
      name: name,
    );
    _updateVegiInfoStatus();
  }

  void updateDate(String date) {
    state = state.copyWith(
      date: date,
    );
    _updateVegiInfoStatus();
  }

  void _updateVegiInfoStatus() {
    state = state.copyWith(
      isVegiAddInfoComplete: state.name != '' && state.date != '',
    );
  }
}
