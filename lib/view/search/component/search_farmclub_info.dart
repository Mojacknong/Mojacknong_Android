import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/model/search/search_farmclub_info_model.dart';
import 'package:farmus/view/farmclub_sign_up/farmclub_sign_up_screen.dart';
import 'package:farmus/view_model/search/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'search_farmclub_info_widget.dart';

class SearchFarmclubInfo extends ConsumerWidget {
  const SearchFarmclubInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<SearchFarmclubInfoModel>?> farmclubs =
        ref.watch(searchFarmclubDifficultyProvider);

    final difficultiesState = ref.watch(searchDifficultyBtnProvider);

    final filteredDifficulties = difficultiesState.entries
        .where((entry) => entry.value)
        .map((e) => e.key)
        .toList();

    final difficultiesToFilter = filteredDifficulties.isEmpty
        ? difficultiesState.keys.toList()
        : filteredDifficulties;

    print('Filtered Difficulties: $difficultiesToFilter');

    return farmclubs.when(
      data: (data) {
        if (data != null && data.isNotEmpty) {
          final filteredData = data.where((farmclub) {
            return difficultiesToFilter.contains(farmclub.difficulty);
          }).toList();
          if (filteredData.isNotEmpty) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: filteredData.length,
              itemBuilder: (context, index) {
                final farmclub = filteredData[index];
                return Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FarmclubSignUpScreen(
                              id: farmclub.id,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 8.0),
                        child: SearchFarmclubInfoWidget(
                          name: farmclub.name,
                          veggieName: farmclub.veggieName,
                          veggieImage: farmclub.veggieImage,
                          difficulty: farmclub.difficulty,
                          startedAt: farmclub.startedAt,
                          maxUser: farmclub.maxUser,
                          curUser: farmclub.curUser,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        height: 1,
                        color: FarmusThemeColor.gray5,
                      ),
                    ),
                  ],
                );
              },
            );
          } else {
            return const Center(
                child: Text('No farmclubs match the selected difficulties.'));
          }
        } else {
          return const Center(child: Text('No farmclubs found'));
        }
      },
      loading: () => const Center(
        child: CircularProgressIndicator(
          color: FarmusThemeColor.dark,
        ),
      ),
      error: (error, stack) {
        print('Error occurred: $error');
        return const Center(child: Text('Failed to load data..'));
      },
    );
  }
}
