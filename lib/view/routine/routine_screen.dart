import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/farmus_calender.dart';
import 'package:farmus/model/routine/routine_date_list_model.dart';
import 'package:farmus/model/routine/routine_month_list_model.dart';
import 'package:farmus/view/routine/component/routine_add.dart';
import 'package:farmus/view_model/routine/notifier/routine_date_list_notifier.dart';
import 'package:farmus/view_model/routine/notifier/routine_month_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoutineScreen extends ConsumerWidget {
  const RoutineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<RoutineDateListModel>> routineDateList =
        ref.watch(routineDateListModelProvider);
    final AsyncValue<RoutineMonthListModel> routineMonthList =
        ref.watch(routineMonthListModelProvider);

    return Scaffold(
      appBar: const BackLeftTitleAppBar(
        title: '루틴',
      ),
      body: SingleChildScrollView(
        child: routineDateList.when(
          data: (routine) {
            return Column(
              children: [
                routineMonthList.when(
                    data: (month) {
                      List<String>? routineMonthDates;
                      if (routineMonthList.value != null) {
                        routineMonthDates = routineMonthList.value!.date;
                      }

                      return FarmusCalender(
                        selectedDay: DateTime.now(),
                        routineMonth: routineMonthDates,
                      );
                    },
                    error: (error, stackTrace) => Center(
                          child: Text(''),
                        ),
                    loading: () => const CircularProgressIndicator()),
                const SizedBox(
                  height: 16.0,
                ),
                ...routine.map((routineItem) {
                  final routineDayMap = {
                    for (var item in routineItem.myVeggieRoutineList)
                      item.content: {
                        'period': item.period,
                        'complete': item.complete
                      }
                  };
                  return RoutineAdd(
                    // TODO 루틴 추가 API 수정
                    myVeggieId: 1,
                    vege: routineItem.veggieName,
                    vegeName: routineItem.nickname,
                    routineDayMap: routineDayMap,
                  );
                }),
              ],
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Center(
            child: Text('Error: $error'),
          ),
        ),
      ),
    );
  }
}
