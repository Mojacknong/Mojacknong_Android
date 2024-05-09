import 'package:farmus/view/routine/component/routine_bottom_sheet_content.dart';
import 'package:flutter/material.dart';

import '../theme/farmus_theme_color.dart';

void showRoutineAddBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: FarmusThemeColor.white,
    builder: (BuildContext context) {
      return const RoutineBottomSheetContent(
        routine: '',
        day: '',
        isCreate: true,
      );
    },
  );
}

void showRoutineEditBottomSheet(
    BuildContext context, String routine, String day,) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: FarmusThemeColor.white,
    builder: (BuildContext context) {
      return RoutineBottomSheetContent(
        routine: routine,
        day: day,
        isCreate: false,
      );
    },
  );
}
