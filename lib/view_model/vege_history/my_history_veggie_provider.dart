import 'package:farmus/repository/my_history_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/veggie_history/user_veggie_history_model.dart';

part 'my_history_veggie_provider.g.dart';

@riverpod
Future<UserVeggieHistoryModel> userVeggieHistoryModel(
    UserVeggieHistoryModelRef ref) async {
  final myVeggieHistory = await MyHistoryRepository.getMyVeggieHistory();

  return UserVeggieHistoryModel(
    veggieHistoryCount: myVeggieHistory.veggieHistoryCount,
    veggieHistoryIcons: myVeggieHistory.veggieHistoryIcons,
  );
}
