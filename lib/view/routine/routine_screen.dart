import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/routine/component/vege_routine_add.dart';
import 'package:farmus/view/vege_add/component/vege_add_calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoutineScreen extends ConsumerWidget {
  const RoutineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(
        title: '루틴',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FarmusCalender(),
            SizedBox(
              height: 16.0,
            ),
            VegeRoutineAdd(
              vege: '상추',
              vegeName: '상훈이',
              routineDayMap: {'물 갈아 주기': '4', '물 주기': '3'},
            ),
            VegeRoutineAdd(
              vege: '토마토',
              vegeName: '토마토짱',
              routineDayMap: {'물 갈이': '4'},
            ),
          ],
        ),
      ),
    );
  }
}
