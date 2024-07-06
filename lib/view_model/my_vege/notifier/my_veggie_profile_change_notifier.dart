import 'package:farmus/model/home/my_veggie_profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/veggie_info_repository.dart';

part 'my_veggie_profile_change_notifier.g.dart';

@riverpod
class MyVeggieProfileChange extends _$MyVeggieProfileChange {
  @override
  Future<MyVeggieProfile> build() async {
    return const MyVeggieProfile(
      nickname: '',
      veggieName: '',
      period: 0,
      veggieImage: '',
      createdVeggie: '',
      step: 0,
    );
  }

  Future<void> putVeggieInfo(
      int myVeggieId, String nickname, String createdVeggie) async {
    await VeggieInfoRepository.veggieInfoChange(
        myVeggieId, nickname, createdVeggie);
  }
}
