import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/farmus_calender.dart';
import 'package:farmus/model/routine/routine_date_list_model.dart';
import 'package:farmus/model/routine/routine_month_list_model.dart';
import 'package:farmus/view/routine/component/routine_add.dart';
import 'package:farmus/view_model/routine/notifier/routine_date_list_notifier.dart';
import 'package:farmus/view_model/routine/notifier/routine_month_list_notifier.dart';
import 'package:farmus/view_model/routine/routine_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoutineScreen extends ConsumerWidget {
  const RoutineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    final selectedMonth = ref.watch(selectedMonthProvider);
    final nowDate = DateTime.now();

    final date = selectedDate ?? nowDate.toIso8601String().split('T').first;
    final month = selectedMonth ?? "${nowDate.year}-${nowDate.month.toString().padLeft(2, '0')}";

    final AsyncValue<List<RoutineDateListModel>> routineDateList = ref.watch(routineDateListModelProvider(date));
    final AsyncValue<RoutineMonthListModel> routineMonthList = ref.watch(routineMonthListModelProvider(month));

    List<String>? routineMonthDates;
    if (routineMonthList.value != null) {
      routineMonthDates = routineMonthList.value!.date;
    }

    return Scaffold(
      appBar: const BackLeftTitleAppBar(
        title: '루틴',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FarmusCalender(
              selectedDay: parseDate(date),
              routineMonth: routineMonthDates,
              onDaySelected: (selectedDay) {
                ref.read(selectedDateProvider.notifier).state = selectedDay.toIso8601String().split('T').first;
              },
              onMonthChanged: (focusedDay) {
                final monthFormatted = "${focusedDay.year}-${focusedDay.month.toString().padLeft(2, '0')}";
                ref.read(selectedMonthProvider.notifier).state = monthFormatted;
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            routineDateList.when(
              data: (routine) {
                return Column(
                  children: routine.map((routineItem) {
                    final routineDayMap = {
                      for (var item in routineItem.myVeggieRoutineList)
                        item.content: {
                          'period': item.period,
                          'complete': item.complete,
                          'routineId': item.routineId
                        }
                    };
                    return RoutineAdd(
                      myVeggieId: routineItem.myVeggieId,
                      vege: routineItem.veggieName,
                      vegeName: routineItem.nickname,
                      routineDayMap: routineDayMap,
                    );
                  }).toList(),
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Center(
                child: Text('Error: $error'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DateTime parseDate(String date) {
  return DateTime.parse(date);
}
