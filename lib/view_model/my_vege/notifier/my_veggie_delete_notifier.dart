import 'package:farmus/model/my_vege/my_veggie_info_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:farmus/view_model/home/home_provider.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_info_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'my_vege_delete_notifier.dart';
import 'my_veggie_list.dart';
import 'my_veggie_profile_notifier.dart';

part 'my_veggie_delete_notifier.g.dart';

@riverpod
class MyVeggieDeleteNotifier extends _$MyVeggieDeleteNotifier {
  int? selectedVeggieId;

  @override
  Future<MyVeggieInfoModel> build() async {
    return const MyVeggieInfoModel(
      nickname: '',
      image: '',
      veggieName: '',
      birthDay: '',
      period: -1,
      myVeggieId: -1,
    );
  }

  bool isVegeSelected(int myVeggieId) {
    return selectedVeggieId == myVeggieId;
  }

  void toggleSelect(MyVeggieInfoModel myVeggie) {
    if (selectedVeggieId == myVeggie.myVeggieId) {
      selectedVeggieId = null;
    } else {
      selectedVeggieId = myVeggie.myVeggieId;
    }

    state = AsyncData(
      MyVeggieInfoModel(
        nickname: myVeggie.nickname,
        image: myVeggie.image,
        veggieName: myVeggie.veggieName,
        birthDay: myVeggie.birthDay,
        period: myVeggie.period,
        myVeggieId: myVeggie.myVeggieId,
      ),
    );
  }

  Future<void> veggieDelete() async {
    await MyVeggieGardenRepository.myVeggieDelete(selectedVeggieId ?? -1);

    state = const AsyncData(
      MyVeggieInfoModel(
        nickname: '',
        image: '',
        veggieName: '',
        birthDay: '',
        period: -1,
        myVeggieId: -1,
      ),
    );

    ref.invalidate(myVegeDeleteProvider);
    ref.invalidate(selectedVegeIdProvider);
    ref.invalidate(myVeggieListModelProvider);
    ref.invalidate(myVeggieInfoProvider);
    selectedVeggieId = ref.read(selectedVegeIdProvider);
    ref.invalidate(myVeggieProfileProvider(selectedVeggieId!));
  }
}
