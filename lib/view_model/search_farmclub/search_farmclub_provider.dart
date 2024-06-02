import 'package:farmus/data/network/base_api_services.dart';
import 'package:farmus/data/network/search_farmclub_service.dart';
import 'package:farmus/model/search/search_farmclub_info_model.dart';
import 'package:farmus/view_model/search_farmclub/notifier/delete_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchFarmclubTextbarProvider =
    StateNotifierProvider<DeletelNotifier, String>((ref) {
  return DeletelNotifier();
});

final searchFarmclubProvider =
    FutureProvider<List<SearchFarmclubInfoModel>?>((ref) async {
  final apiClient = ApiClient();
  final service = SearchFarmclubService(apiClient: apiClient);

  try {
    return await service.searchFarmclubs(difficulty: 'HARD', keyword: '');
  } catch (error) {
    print('Error occurred: $error');
    throw Exception('Failed to load farmclubs: $error');
  }
});
