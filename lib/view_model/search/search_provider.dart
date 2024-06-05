import 'package:farmus/model/search/recommended_farmclubs_model.dart';
import 'package:farmus/repository/search_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

@riverpod
Future<RecommendedFarmclubsModel> recommendedFarmclubsModel(
    RecommendedFarmclubsModelRef ref) async {
  final repository = SearchFarmclubRepository();
  final recommendedFarmclubs = await repository.getRecommendedFarmclubs();

  return RecommendedFarmclubsModel(
      recFirst: recommendedFarmclubs.recFirst,
      recSecond: recommendedFarmclubs.recSecond);
}
