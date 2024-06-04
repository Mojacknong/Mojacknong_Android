import 'package:farmus/model/my_vege/my_veggie_add_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_veggie_add_notifier.g.dart';

@riverpod
class MyVeggieAddNotifier extends _$MyVeggieAddNotifier {
  @override
  Future<MyVeggieAddModel> build() async {
    return MyVeggieAddModel(
        id: '', name: '', difficulty: '', veggieImage: '', period: '');
  }

  Future<void> myVeggieAdd() async {
    await MyVeggieGardenRepository.myVeggieAdd(
        'nickname', 'birth', 'veggieInfoId', 'veggieName', 'veggieImage');
  }
}
