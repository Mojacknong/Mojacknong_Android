import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/my_vege/my_veggie_info_model.dart';
import '../../../repository/veggie_info_repository.dart';

part 'veggie_info_change_notifier.g.dart';

@riverpod
class MyVeggieInfo extends _$MyVeggieInfo {
  @override
  Future<MyVeggieInfoModel> build() async {
    return const MyVeggieInfoModel(
        nickname: '',
        image: '',
        veggieName: '',
        birthDay: '',
        period: 0,
        myVeggieId: 0);
  }

  Future<void> putVeggieInfo(MyVeggieInfoModel myVeggieInfo) async {
    final response = await VeggieInfoRepository.veggieInfoChange(
        myVeggieInfo.myVeggieId,
        myVeggieInfo.nickname,
        myVeggieInfo.birthDay as DateTime);
  }
}
