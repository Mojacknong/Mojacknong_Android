import 'package:farmus/model/home/recommend_veggie_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recommend_veggie_info_notifier.g.dart';

@riverpod
class RecommendVeggieInfoNotifier extends _$RecommendVeggieInfoNotifier {
  @override
  Future<RecommendVeggieModel> build() async {
    return RecommendVeggieModel();
  }

  Future<void> recommendVeggieInfo() async {
    final response = await MyVeggieGardenRepository.recommendVeggieInfo();
    print(response);
  }
}
