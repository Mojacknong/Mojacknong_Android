import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/model/home/my_veggie_list_model.dart';
import 'package:farmus/view/home/component/home_diary.dart';
import 'package:farmus/view/home/component/home_farmclub_mission.dart';
import 'package:farmus/view/home/component/home_motivation.dart';
import 'package:farmus/view/home/component/home_my_vege_list.dart';
import 'package:farmus/view/home/component/home_routine.dart';
import 'package:farmus/view/home/component/home_sub_title.dart';
import 'package:farmus/view/home/component/none/home_none_container.dart';
import 'package:farmus/view/routine/routine_screen.dart';
import 'package:farmus/view/vege_diary/vege_diary_screen.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_list.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_profile_notifier.dart';
import 'package:farmus/view_model/veggie_info/recommend_veggie_info_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_bar/home_app_bar.dart';
import '../../model/veggie_info/recommend_veggie_model.dart';
import '../../view_model/home/home_provider.dart';
import '../main/main_screen.dart';
import 'component/home_my_vege.dart';
import 'component/none/home_my_vege_none.dart';

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

    return Scaffold(
      appBar: veggieList.when(
        data: (veggieListData) => HomeScreenAppBar(
          veggieCount: veggieListData.length.toString(),
        ),
        error: (error, stack) => const HomeScreenAppBar(
          veggieCount: '0',
        ),
        loading: () => const HomeScreenAppBar(
          veggieCount: '0',
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
                      loading: () => const CircularProgressIndicator(
                        color: FarmusThemeColor.primary,
                      ),
                    )
                  else ...[
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
                      motivation: '텃밭에서 식탁까지 팜어스와 늘 함께해요!',
                    ),
                  ],
                  const SizedBox(height: 16),
                  HomeSubTitle(
                    title: '루틴',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => const RoutineScreen(),
                        ),
                      );
                    },
                    visible: veggieList.value!.isNotEmpty,
                  ),
                  veggieList.value!.isNotEmpty
                      ? const HomeRoutine()
                      : const HomeNoneContainer(
                          title: null,
                        ),
                  const SizedBox(height: 32),
                  HomeSubTitle(
                    title: '성장 일기',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => const VegeDiaryScreen(),
                        ),
                      );
                    },
                    visible: veggieList.value!.isNotEmpty,
                  ),
                  veggieList.value!.isNotEmpty
                      ? const HomeDiary()
                      : const HomeNoneContainer(
                          title: null,
                        ),
                  const SizedBox(height: 32),
                  HomeSubTitle(
                    title: '팜클럽 미션',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => const MainScreen(selectedIndex: 1,),
                        ),
                      );
                    },
                    visible: veggieList.value!.isNotEmpty,
                  ),
                  veggieList.value!.isNotEmpty
                      ? const HomeFarmclubMission()
                      : const HomeNoneContainer(
                          title: null,
                        ),
                ],
              ),
            ),
          );
        },
        error: (error, stack) =>
            Center(child: Text('Error: ${error.toString()}')),
        loading: () => Container(),
      ),
    );
  }
}
