import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/home/vege_add_info_model.dart';

part 'my_veggie_add_notifier.g.dart';

@riverpod
class MyVeggieAddNotifier extends _$MyVeggieAddNotifier {
  @override
  Future<VegeAddInfoModel> build() async {
    return VegeAddInfoModel(
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
    if (state.value != null) {
      state = AsyncData(VegeAddInfoModel(
        isFirstSelect: state.value!.isFirstSelect,
        isSecondSelect: state.value!.isSecondSelect,
        isThirdSelect: state.value!.isThirdSelect,
        isFourthSelect: state.value!.isFourthSelect,
        isFiveSelect: state.value!.isFiveSelect,
        isSixSelect: state.value!.isSixSelect,
        name: name,
        date: state.value!.date,
        isVegeSelectComplete: state.value!.isVegeSelectComplete,
        isVegeAddInfoComplete: state.value!.isVegeAddInfoComplete,
        selectedIndex: state.value!.selectedIndex,
      ));
      _updateVegeInfoStatus();
    }
  }

  void updateDate(String date) {
    if (state.value != null) {
      state = AsyncData(VegeAddInfoModel(
        isFirstSelect: state.value!.isFirstSelect,
        isSecondSelect: state.value!.isSecondSelect,
        isThirdSelect: state.value!.isThirdSelect,
        isFourthSelect: state.value!.isFourthSelect,
        isFiveSelect: state.value!.isFiveSelect,
        isSixSelect: state.value!.isSixSelect,
        name: state.value!.name,
        date: date,
        isVegeSelectComplete: state.value!.isVegeSelectComplete,
        isVegeAddInfoComplete: state.value!.isVegeAddInfoComplete,
        selectedIndex: state.value!.selectedIndex,
      ));
      _updateVegeInfoStatus();
    }
  }

  void updateDateFormatted(DateTime date) {
    final formattedDate =
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
    updateDate(formattedDate);
  }

  void _updateVegeInfoStatus() {
    if (state.value != null) {
      state = AsyncData(VegeAddInfoModel(
        isFirstSelect: state.value!.isFirstSelect,
        isSecondSelect: state.value!.isSecondSelect,
        isThirdSelect: state.value!.isThirdSelect,
        isFourthSelect: state.value!.isFourthSelect,
        isFiveSelect: state.value!.isFiveSelect,
        isSixSelect: state.value!.isSixSelect,
        name: state.value!.name,
        date: state.value!.date,
        isVegeAddInfoComplete:
        state.value!.name.isNotEmpty && state.value!.date.isNotEmpty,
        isVegeSelectComplete: state.value!.isVegeSelectComplete,
        selectedIndex: state.value!.selectedIndex,
      ));
    }
  }

  String? _getSelectedVeggieInfoId() {
    if (state.value == null) return null;
    if (state.value!.isFirstSelect) return '65fe9366569b132880977375';
    if (state.value!.isSecondSelect) return '65fe9273569b13288097736f';
    if (state.value!.isThirdSelect) return '65fe933f569b132880977373';
    if (state.value!.isFourthSelect) return '65fe92c6569b132880977372';
    if (state.value!.isFiveSelect) return '65fe9358569b132880977374';
    if (state.value!.isSixSelect) return '65fe9375569b132880977376';
    return null;
  }

  Future<void> myVeggieAdd() async {
    final veggieInfoId = _getSelectedVeggieInfoId();
    if (veggieInfoId != null) {
      await MyVeggieGardenRepository.myVeggieAdd(
          state.value!.name, state.value!.date, veggieInfoId);
    } else {
      throw Exception('No veggieInfoId selected');
    }
  }
}
