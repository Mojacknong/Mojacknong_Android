import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/routine/component/vege_routine_add.dart';
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
      body: Column(
        children: [
          VegeRoutineAdd(vege: '상추', vegeName: '상훈이',),
          VegeRoutineAdd(vege: '토마토', vegeName: '토마토짱',),
        ],
      ),
    );
  }
}
