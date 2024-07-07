import 'package:farmus/model/home/my_veggie_list_model.dart';
import 'package:farmus/view/home/component/home_motivation.dart';
import 'package:farmus/view/home/component/home_my_vege_list.dart';
import 'package:farmus/view/home/component/home_sub_title.dart';
import 'package:farmus/view/home/component/home_to_do.dart';
import 'package:farmus/view/home/component/home_vege_to_do.dart';
import 'package:farmus/view/home/component/none/home_none_content.dart';
import 'package:farmus/view/main/main_screen.dart';
import 'package:farmus/view/vege_diary_write/vege_diary_write_screen.dart';
import 'package:farmus/view_model/home/notifier/veggie_diary_one_notifier.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_list.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_profile_notifier.dart';
import 'package:farmus/view_model/veggie_info/recommend_veggie_info_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_bar/home_app_bar.dart';
import '../../model/veggie_info/recommend_veggie_model.dart';
import '../../view_model/home/home_provider.dart';
import '../routine/routine_screen.dart';
import 'component/home_my_vege.dart';
import 'component/home_vege_diary.dart';
import 'component/none/home_my_vege_none.dart';
import 'component/none/home_none_container.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final selectedVegeId = ref.watch(selectedVegeIdProvider);
    final AsyncValue<List<MyVeggieListModel>> veggieList =
        ref.watch(myVeggieListModelProvider);
    final AsyncValue<List<RecommendVeggieModel>> recommend =
        ref.watch(recommendVeggieModelProvider);

    String toDo = ref.watch(homeToDoProvider);

    return Scaffold(
      appBar: veggieList.when(
        data: (veggieListData) => HomeScreenAppBar(
          veggieCount: veggieListData.length.toString(),
        ),
        error: (error, stack) => const HomeScreenAppBar(
          veggieCount: "0",
        ),
        loading: () => const HomeScreenAppBar(
          veggieCount: "0",
        ),
      ),
      body: veggieList.when(
        data: (veggieListData) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (veggieListData.isEmpty)
                    recommend.when(
                      data: (value) =>
                          HomeMyVegeNone(recommendVeggieInfo: value),
                      error: (error, stack) => const Text('추천 채소 불러오기 실패'),
                      loading: () => const CircularProgressIndicator(),
                    ),
                  if (veggieListData.isNotEmpty) ...[
                    const HomeMyVegeList(),
                    const SizedBox(height: 8),
                    if (selectedVegeId != null)
                      ref.watch(myVeggieProfileProvider(selectedVegeId)).when(
                            data: (profile) {
                              return HomeMyVege(size: size, profile: profile);
                            },
                            loading: () => const CircularProgressIndicator(),
                            error: (error, stack) => Text('Error: $error'),
                          )
                    else
                      ref
                          .watch(myVeggieProfileProvider(
                              veggieListData.first.myVeggieId))
                          .when(
                            data: (profile) {
                              return HomeMyVege(size: size, profile: profile);
                            },
                            loading: () => const CircularProgressIndicator(),
                            error: (error, stack) => Text('Error: $error'),
                          ),
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
                        ? HomeNoneContainer(
                            text: '아직 루틴을 등록하지 않았어요',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RoutineScreen()),
                              );
                            },
                          )
                        : HomeNoneContainer(
                            text: '아직 팜클럽에 가입하지 않았어요',
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const MainScreen(selectedIndex: 2);
                                  },
                                ),
                                (route) => false,
                              );
                            },
                          ),
                  const SizedBox(height: 24),
                  const HomeSubTitle(title: "성장 일기"),
                  if (veggieListData.isNotEmpty)
                    if (selectedVegeId != null)
                      ref
                          .watch(veggieDiaryOneModelProvider(selectedVegeId))
                          .when(
                            data: (diary) {
                              if (diary != null) {
                                return HomeVegeDiary(diary: diary);
                              } else {
                                return HomeNoneContainer(
                                  text: '아직 작성한 일기가 없어요',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (builder) =>
                                            const VegeDiaryWriteScreen(),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                            loading: () => const CircularProgressIndicator(),
                            error: (error, stack) => Text('Error: $error'),
                          )
                    else
                      ref
                          .watch(veggieDiaryOneModelProvider(
                              veggieListData.first.myVeggieId))
                          .when(
                            data: (diary) {
                              if (diary != null) {
                                return HomeVegeDiary(diary: diary);
                              } else {
                                return HomeNoneContainer(
                                  text: '아직 작성한 일기가 없어요',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (builder) =>
                                        const VegeDiaryWriteScreen(),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                            loading: () => const CircularProgressIndicator(),
                            error: (error, stack) => Text('Error: $error'),
                          ),
                ],
              ),
            ),
          );
        },
        error: (error, stack) =>
            Center(child: Text('Error: ${error.toString()}')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
