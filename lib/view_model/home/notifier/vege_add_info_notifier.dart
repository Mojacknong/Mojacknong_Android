import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/home/vege_add_info_model.dart';

class VegeAddInfoNotifier extends StateNotifier<VegeAddInfoModel> {
  VegeAddInfoNotifier()
      : super(VegeAddInfoModel(
          isFirstSelect: false,
          isSecondSelect: false,
          isThirdSelect: false,
          isFourthSelect: false,
          isFiveSelect: false,
          isSixSelect: false,
          isVegeSelectComplete: false,
          name: '',
          date: '',
          isVegeAddInfoComplete: false,
          selectedIndex: -1,
        ));

  void selectBox(int boxIndex) {
    state = state.copyWith(
      selectedIndex: boxIndex,
      isVegeSelectComplete: true,
    );
  }

  void updateNickname(String name) {
    state = state.copyWith(
      name: name,
    );
    _updateVegeInfoStatus();
  }

  void updateDate(String date) {
    state = state.copyWith(
      date: date,
    );
    _updateVegeInfoStatus();
  }

  void _updateVegeInfoStatus() {
    state = state.copyWith(
      isVegeAddInfoComplete: state.name.isNotEmpty && state.date.isNotEmpty,
    );
  }

  void reset() {
    state = VegeAddInfoModel(
      isFirstSelect: false,
      isSecondSelect: false,
      isThirdSelect: false,
      isFourthSelect: false,
      isFiveSelect: false,
      isSixSelect: false,
      isVegeSelectComplete: false,
      name: '',
      date: '',
      isVegeAddInfoComplete: false,
      selectedIndex: -1,
    );
  }
}
