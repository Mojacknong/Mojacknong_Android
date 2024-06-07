import 'package:farmus/model/home/my_veggie_list_model.dart';
import 'package:farmus/model/home/my_veggie_profile.dart';
import 'package:farmus/model/home/veggie_diary_one_model.dart';
import 'package:farmus/view/home/component/home_motivation.dart';
import 'package:farmus/view/home/component/home_my_vege_list.dart';
import 'package:farmus/view/home/component/home_sub_title.dart';
import 'package:farmus/view/home/component/home_to_do.dart';
import 'package:farmus/view/home/component/home_vege_to_do.dart';
import 'package:farmus/view/home/component/none/home_none_content.dart';
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
import 'component/home_my_vege.dart';
import 'component/home_vege_diary.dart';
import 'component/none/home_my_vege_none.dart';
import 'component/none/home_none_container.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final selectedVeggieId = ref.watch(selectedVeggieIdProvider);
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
                    if (selectedVeggieId != null)
                      FutureBuilder<MyVeggieProfile>(
                        future: ref.read(
                            myVeggieProfileProvider(selectedVeggieId).future),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (snapshot.hasData) {
                            final profile = snapshot.data!;
                            return HomeMyVege(size: size, profile: profile);
                          } else {
                            return const SizedBox();
                          }
                        },
                      )
                    else
                      FutureBuilder<MyVeggieProfile>(
                        future: ref.read(myVeggieProfileProvider(
                                veggieList.value!.first.myVeggieId)
                            .future),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (snapshot.hasData) {
                            final profile = snapshot.data!;
                            return HomeMyVege(size: size, profile: profile);
                          } else {
                            return const Text('채소를 선택하세요.');
                          }
                        },
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
                        ? const HomeNoneContainer(
                            text: '아직 루틴을 등록하지 않았어요',
                          )
                        : const HomeNoneContainer(
                            text: '아직 팜클럽에 가입하지 않았어요',
                          ),
                  const SizedBox(height: 24),
                  const HomeSubTitle(title: "성장 일기"),
                  if (veggieListData.isNotEmpty)
                    if (selectedVeggieId != null)
                      FutureBuilder<VeggieDiaryOneModel?>(
                        future: ref.watch(
                            veggieDiaryOneModelProvider(selectedVeggieId)
                                .future),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (snapshot.hasData) {
                            final diary = snapshot.data;
                            return HomeVegeDiary(diary: diary!);
                          } else {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (builder) =>
                                        const VegeDiaryWriteScreen(),
                                  ),
                                );
                              },
                              child:
                                  const HomeNoneContent(text: '아직 작성한 일기가 없어요'),
                            );
                          }
                        },
                      )
                    else
                      FutureBuilder<VeggieDiaryOneModel?>(
                        future: ref.read(veggieDiaryOneModelProvider(
                                veggieList.value!.first.myVeggieId)
                            .future),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (snapshot.hasData) {
                            final diary = snapshot.data;
                            return HomeVegeDiary(
                              diary: diary!,
                            );
                          } else {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (builder) =>
                                        const VegeDiaryWriteScreen(),
                                  ),
                                );
                              },
                              child:
                                  const HomeNoneContent(text: '아직 작성한 일기가 없어요'),
                            );
                          }
                        },
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
