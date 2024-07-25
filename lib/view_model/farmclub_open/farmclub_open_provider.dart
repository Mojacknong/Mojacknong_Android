import 'package:farmus/model/farmclub_open/farmclub_vege_list_model.dart';
import 'package:farmus/view_model/farmclub_open/notifier/farmclub_open_info_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repository/farmclub_open_repository.dart';

final farmclubOpenInfoAddProvider =
    StateNotifierProvider<FarmclubOpenInfoNotifier, FarmclubVegeListModel>(
        (ref) {
  return FarmclubOpenInfoNotifier();
});

final selectedFarmclubVegeIdProvider = StateProvider<int?>((ref) => null);


final farmclubOpenRepositoryProvider = Provider<FarmclubOpenRepository>((ref) {
  return FarmclubOpenRepository();
});

final farmclubOpenInfoProvider = FutureProvider.autoDispose
    .family<FarmclubVegeListModel, FarmclubVegeListModel>(
        (ref, farmclubVegeListModel) async {
      final repository = ref.read(farmclubOpenRepositoryProvider);
      try {
        final response = await repository.postFarmclubInfo(farmclubVegeListModel);
        return response;
      } catch (e) {
        print('Error in farmclubOpenInfoProvider: $e');
        throw e;
      }
    });

