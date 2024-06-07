import 'package:farmus/view/home/component/home_motivation.dart';
import 'package:farmus/view/home/component/home_my_vege_list.dart';
import 'package:farmus/view/home/component/home_sub_title.dart';
import 'package:farmus/view/home/component/home_to_do.dart';
import 'package:farmus/view/home/component/home_vege_to_do.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_list_notifier.dart';
import 'package:farmus/view_model/veggie_info/recommend_veggie_info_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_bar/home_app_bar.dart';
import '../../model/veggie_info/recommend_veggie_model.dart';
import '../../view_model/home/home_provider.dart';
import 'component/home_my_vege.dart';
import 'component/home_vege_diary.dart';
import 'component/none/home_my_vege_none.dart';
import 'component/none/home_none_container.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final veggieList =
        ref.watch(myVeggieListNotifierProvider.notifier).myVeggieList();
    final AsyncValue<List<RecommendVeggieModel>> recommend =
        ref.watch(recommendVeggieModelProvider);

    String toDo = ref.watch(homeToDoProvider);

    return Scaffold(
      appBar: const HomeScreenAppBar(),
      body: FutureBuilder<List<dynamic>>(
        future: Future.wait([veggieList]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final veggieListData = snapshot.data![0] as List<dynamic>;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (veggieListData.isEmpty)
                      switch (recommend) {
                        AsyncData(:final value) =>
                          HomeMyVegeNone(recommendVeggieInfo: value),
                        AsyncError() => const Text('추천 채소 불러오기 실패'),
                        _ => const CircularProgressIndicator(),
                      },
                    if (veggieListData.isNotEmpty) ...[
                       const HomeMyVegeList(),
                      const SizedBox(height: 8),
                      HomeMyVege(size: size),
                      const HomeMotivation(
                        motivation: "텃밭에서 식탁까지 팜어스와 늘 함께해요!",
                      ),
                    ],
                    const SizedBox(height: 8),
                    const HomeSubTitle(title: "오늘 할 일"),
                    const HomeToDo(),
                    const SizedBox(
                      height: 8.0,
                    ),
                    if (veggieListData.isNotEmpty)
                      const HomeVegeTodo()
                    else
                      toDo == "routine"
                          ? const HomeNoneContainer(
                              text: '아직 루틴을 등록하지 않았어요',
                            )
                          : const HomeNoneContainer(
                              text: '아직 팜클럽에 가입하지 않았어요',
                            ),
                    const SizedBox(height: 24),
                    const HomeSubTitle(title: "성장 일기"),
                    if (veggieListData.isNotEmpty)
                      const HomeVegeDiary()
                    else
                      const HomeNoneContainer(text: '아직 작성한 일기가 없어요'),
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: Text('데이터가 없습니다.'),
            );
          }
        },
      ),
    );
  }
}
