import 'package:farmus/view/home/component/vege_routine.dart';
import 'package:farmus/view/routine/component/vege_routine_add_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class VegeRoutineAdd extends ConsumerWidget {
  const VegeRoutineAdd({
    super.key,
    required this.vege,
    required this.vegeName,
    required this.routineDayMap,
  });

  final String vege;
  final String vegeName;
  final Map<String, String> routineDayMap;

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
              VegeRoutine(routine: entry.key, day: entry.value),
          if (routineDayMap.isEmpty) Container(),
          const VegeRoutineAddSheet(),
        ],
      ),
    );
  }
}
