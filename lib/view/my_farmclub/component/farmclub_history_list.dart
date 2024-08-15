import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../model/my_farmclub_history/my_farmclub_history_model.dart';
import '../../../view_model/my_farmclub_history/my_farmclub_history_notifier.dart';

import 'farmclub_history_profile.dart';

class FarmclubHistoryList extends ConsumerWidget {
  const FarmclubHistoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<MyFarmclubHistoryModel>> farmclubHistory =
        ref.watch(myFarmclubHistoryModelProvider);

    return farmclubHistory.when(
      data: (historyList) {
        if (historyList.isEmpty) {
          return const Center(child: Text('No farmclub history available'));
        } else {
          return const SingleChildScrollView(child: (FarmclubHistoryProfile()));
        }
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
