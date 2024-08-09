import 'package:farmus/model/veggie_history/veggie_history_list_model.dart';
import 'package:farmus/repository/veggie_history_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'veggie_history_list_provider.g.dart';

@riverpod
Future<VeggieHistoryListModel> veggieHistoryListModel(
    VeggieHistoryListModelRef ref) async {
  final repository = VeggieHistoryRepository();
  final response = await repository.getVeggieHistory();
  return response;
}
