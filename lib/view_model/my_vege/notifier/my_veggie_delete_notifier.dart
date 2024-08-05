import 'package:farmus/model/my_vege/my_veggie_info_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

  Future<void> veggieDelete(int myVeggieId) async {
    await MyVeggieGardenRepository.myVeggieDelete(myVeggieId);

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
  }
}
