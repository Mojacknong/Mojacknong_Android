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

class HomeVegeRoutine extends ConsumerWidget {
  const HomeVegeRoutine({
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
                text: '아직 루틴을 등록하지 않았어요',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RoutineScreen()),
                  );
                },
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
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
                            day: routineInfo.period.toString(),
                            isChecked: routineInfo.complete,
                            onCheck: () {},
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
