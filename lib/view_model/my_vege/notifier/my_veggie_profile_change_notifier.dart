import 'package:farmus/view_model/home/notifier/my_veggie_add_notifier.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_profile_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/home/vege_add_info_model.dart';
import '../../../repository/veggie_info_repository.dart';
import 'my_veggie_list.dart';

part 'my_veggie_profile_change_notifier.g.dart';

@riverpod
class MyVeggieProfileChange extends _$MyVeggieProfileChange {
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

  Future<void> putVeggieInfo(
      int myVeggieId, String nickname, String createdVeggie) async {
    await VeggieInfoRepository.veggieInfoChange(
        myVeggieId, nickname, createdVeggie);
    ref.invalidate(myVeggieProfileProvider);
    ref.invalidate(myVeggieListModelProvider);
    ref.invalidate(myVeggieAddNotifierProvider);
  }
}
