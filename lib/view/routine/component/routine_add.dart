import 'package:farmus/view/home/component/vege_routine.dart';
import 'package:farmus/view_model/routine/routine_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/bottom_sheet/show_farmus_bottom_sheet.dart';
import '../../../common/button/routine_add_button.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class RoutineAdd extends ConsumerWidget {
  const RoutineAdd({
    super.key,
    required this.myVeggieId,
    required this.vege,
    required this.vegeName,
    required this.routineDayMap,
  });

  final int myVeggieId;
  final String vege;
  final String vegeName;
  final Map<String, Map<String, dynamic>> routineDayMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                vegeName,
                style: FarmusThemeTextStyle.darkSemiBold15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  vege,
                  style: FarmusThemeTextStyle.gray2Medium15,
                ),
              ),
            ],
          ),
          if (routineDayMap.isNotEmpty)
            for (final entry in routineDayMap.entries)
              Row(
                children: [
                  Expanded(
                    child: VegeRoutine(
                      routine: entry.key,
                      isChecked: entry.value['complete'],
                      day: entry.value['period'],
                      routineId: entry.value['routineId'],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showRoutineEditBottomSheet(
                          context,
                          myVeggieId,
                          entry.value['routineId'],
                          entry.key,
                          entry.value['period']);
                    },
                    icon: SvgPicture.asset('assets/image/ic_more_vertical.svg'),
                  )
                ],
              ),
          if (routineDayMap.isEmpty) Container(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RoutineAddButton(
              onPressed: () {
                showRoutineAddBottomSheet(context, myVeggieId);
              },
            ),
          ),
        ],
      ),
    );
  }
}
