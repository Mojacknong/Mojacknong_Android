import 'package:farmus/model/search/search_farmclub_info_model.dart';
import 'package:farmus/repository/search_farmclub_repository.dart';
import 'package:farmus/view_model/search_farmclub/notifier/delete_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_farmclub_provider.g.dart';

final searchFarmclubTextbarDeleteProvider =
    StateNotifierProvider<DeletelNotifier, String>((ref) {
  return DeletelNotifier();
});

@riverpod
Future<List<SearchFarmclubInfoModel>?> searchFarmclubsResult(
    SearchFarmclubsResultRef ref, String keyword) async {
  final repository = SearchFarmclubRepository();
  final response = await repository.fetchFarmclubs(keyword);
  return response;
}
