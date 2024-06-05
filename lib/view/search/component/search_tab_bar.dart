import 'package:farmus/common/tab_bar/primary_tab_bar.dart';
import 'package:farmus/model/search/recommended_farmclubs_model.dart';
import 'package:farmus/view/search/component/search_vege_info.dart';
import 'package:farmus/view_model/search/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchTabBar extends ConsumerWidget {
  const SearchTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<RecommendedFarmclubsModel> recommendedFarmclubsAsyncValue =
        ref.watch(recommendedFarmclubsModelProvider);

    return recommendedFarmclubsAsyncValue.when(
      data: (recommendedFarmclubs) {
        return PrimaryTabBar(
          tab: [
            recommendedFarmclubs.recFirst.veggieName,
            recommendedFarmclubs.recSecond.veggieName
          ],
          tabView: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SearchVegeInfo(
                day: recommendedFarmclubs.recFirst.startedAt,
                num: recommendedFarmclubs.recFirst.currentMemberCount,
                total: recommendedFarmclubs.recFirst.maxMemberCount,
                id: recommendedFarmclubs.recFirst.farmClubId,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SearchVegeInfo(
                day: recommendedFarmclubs.recSecond.startedAt,
                num: recommendedFarmclubs.recSecond.currentMemberCount,
                total: recommendedFarmclubs.recSecond.maxMemberCount,
                id: recommendedFarmclubs.recSecond.farmClubId,
              ),
            ),
          ],
          tabViewHeights: 280,
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('$error')),
    );
  }
}
