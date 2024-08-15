import 'package:farmus/model/my_farmclub_history/user_farmclub_history_model.dart';
import 'package:farmus/repository/my_history_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_history_farmclub_provider.g.dart';

@riverpod
Future<UserFarmclubHistoryModel> userFarmclubHistoryModel(
    UserFarmclubHistoryModelRef ref) async {
  final myFarmclubHistory = await MyHistoryRepository.getMyFarmclubHistory();

  return UserFarmclubHistoryModel(
    farmClubHistoryCount: myFarmclubHistory.farmClubHistoryCount,
    farmClubHistoryIcons: myFarmclubHistory.farmClubHistoryIcons,
  );
}
