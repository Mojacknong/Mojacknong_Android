import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/home/vege_add_info_model.dart';

part 'my_veggie_add_notifier.g.dart';

@riverpod
class MyVeggieAddNotifier extends _$MyVeggieAddNotifier {
  @override
  Future<VegeAddInfoModel> build() async {
    return (VegeAddInfoModel(
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
  }

  void selectBox(int boxIndex) {
    state = AsyncData(
      VegeAddInfoModel(
        isFirstSelect: boxIndex == 0,
        isSecondSelect: boxIndex == 1,
        isThirdSelect: boxIndex == 2,
        isFourthSelect: boxIndex == 3,
        isFiveSelect: boxIndex == 4,
        isSixSelect: boxIndex == 5,
        isVegeSelectComplete: true,
        name: state.value?.name ?? '',
        date: state.value?.date ?? '',
        isVegeAddInfoComplete: state.value?.isVegeAddInfoComplete ?? false,
        selectedIndex: boxIndex,
      ),
    );
  }

  void updateNickname(String name) {
    state = AsyncData(VegeAddInfoModel(
        name: name,
        date: state.value!.date,
        isVegeSelectComplete: state.value!.isVegeSelectComplete,
        isVegeAddInfoComplete: state.value!.isVegeAddInfoComplete));
    _updateVegeInfoStatus();
  }

  void updateDate(String date) {
    state = AsyncData(VegeAddInfoModel(
        name: state.value!.name,
        date: date,
        isVegeSelectComplete: state.value!.isVegeSelectComplete,
        isVegeAddInfoComplete: state.value!.isVegeAddInfoComplete));
    _updateVegeInfoStatus();
  }

  void _updateVegeInfoStatus() {
    state = AsyncData(VegeAddInfoModel(
      name: state.value!.name,
      date: state.value!.date,
      isVegeAddInfoComplete:
          state.value!.name.isNotEmpty && state.value!.date.isNotEmpty,
      isVegeSelectComplete: state.value!.isVegeSelectComplete,
    ));
  }

  Future<void> myVeggieAdd() async {
    await MyVeggieGardenRepository.myVeggieAdd(state.value!.name,
        state.value!.date, '1', state.value!.name, state.value!.name);
  }
}
