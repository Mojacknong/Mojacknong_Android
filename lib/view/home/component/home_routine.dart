import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/model/routine/my_veggie_routine_info_model.dart';
import 'package:farmus/view/home/component/vege_routine.dart';
import 'package:farmus/view/routine/routine_screen.dart';
import 'package:farmus/view_model/home/home_provider.dart';
import 'package:farmus/view_model/routine/notifier/my_veggie_routine_info_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'none/home_none_container.dart';

class HomeRoutine extends ConsumerWidget {
  const HomeRoutine({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedVegeId = ref.watch(selectedVegeIdProvider);

    final AsyncValue<List<MyVeggieRoutineInfoModel>> myVeggieRoutineList =
        ref.watch(myVeggieRoutineInfoModelProvider(selectedVegeId));

    return myVeggieRoutineList.when(
      data: (myVeggieRoutineInfo) {
        final toDoRoutineCount = myVeggieRoutineInfo
            .where((routineInfo) => !routineInfo.complete)
            .length;

        return myVeggieRoutineInfo.isEmpty
            ? HomeNoneContainer(
                title: '오늘 루틴이 없어요',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RoutineScreen()),
                  );
                },
          buttonText: '루틴 등록하기',
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Text(
                        "오늘 ",
                        style: FarmusThemeTextStyle.gray1Medium13,
                      ),
                      Text(
                        "$toDoRoutineCount개",
                        style: FarmusThemeTextStyle.redSemiBold13,
                      ),
                      const Text(
                        "의 루틴이 남았어요",
                        style: FarmusThemeTextStyle.gray1Medium13,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Column(
                    children: myVeggieRoutineInfo.map((routineInfo) {
                      return Column(
                        children: [
                          VegeRoutine(
                            routine: routineInfo.content,
                            day: routineInfo.period,
                            isChecked: routineInfo.complete,
                            routineId: routineInfo.routineId,
                          ),
                          const Divider(
                            height: 1,
                            color: FarmusThemeColor.gray5,
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ],
              );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
