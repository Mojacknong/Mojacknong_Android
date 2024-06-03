import 'package:farmus/model/my_vege/my_vege_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_veggie_list_notifier.g.dart';

@riverpod
class MyVeggieListNotifier extends _$MyVeggieListNotifier {
  @override
  List<MyVegeModel> build() {
    return [MyVegeModel(vegeName: '', vegeType: '', nowDay: '', startDay: ''),];
  }
  Future<void> myVeggieList() async {
    final response = await MyVeggieGardenRepository.myVeggieList();
    print(response);
  }
}
