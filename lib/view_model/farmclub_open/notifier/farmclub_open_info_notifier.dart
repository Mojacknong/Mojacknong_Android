import 'package:farmus/model/farmclub_open/farmclub_open_info_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubOpenInfoNotifier extends StateNotifier<FarmclubOpenInfoModel> {
  FarmclubOpenInfoNotifier()
      : super(FarmclubOpenInfoModel(
          isButtonPressed: false,
          name: '',
          num: '',
          intro: '',
          date: '',
          isFarmclubOpenInfoComplete: false,
        ));

  void reset() {
    state = FarmclubOpenInfoModel(
      isButtonPressed: false,
      name: '',
      num: '',
      intro: '',
      date: '',
      isFarmclubOpenInfoComplete: false,
    );
  }

  void updateButtonPressed(bool isButtonPressed) {
    state = state.copyWith(isButtonPressed: isButtonPressed);
    _updateFarmclubOpenInfoStatus();
  }

  void updateFarmclubName(String name) {
    state = state.copyWith(
      name: name,
    );
    _updateFarmclubOpenInfoStatus();
  }

  void updateFarmclubNum(String num) {
    state = state.copyWith(
      num: num,
    );
    _updateFarmclubOpenInfoStatus();
  }

  void updateFarmclubIntro(String intro) {
    state = state.copyWith(
      intro: intro,
    );
    _updateFarmclubOpenInfoStatus();
  }

  void updateDate(String date) {
    state = state.copyWith(
      date: date,
    );
    _updateFarmclubOpenInfoStatus();
  }

  void _updateFarmclubOpenInfoStatus() {
    state = state.copyWith(
      isFarmclubOpenInfoComplete: state.isButtonPressed &&
          state.name != '' &&
          state.num != '' &&
          state.intro != '' &&
          state.date != '',
    );
  }
}
