import 'package:farmus/model/search/search_farmclub_info_model.dart';
import 'package:farmus/repository/search_farmclub_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'farmclub_info_provider.g.dart';

@riverpod
Future<SearchFarmclubInfoModel> searchFarmclubInfoModel(
    SearchFarmclubInfoModelRef ref) async {
  final repository = SearchFarmclubRepository();
  final response = await repository.getMyVeggieInfo();
  return response;
}
