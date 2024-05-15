import 'package:farmus/common/dialog/check_dialog.dart';
import 'package:farmus/view/farmclub_signup/component/farmclub_signup_bottom_sheet_content.dart';
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
  BuildContext context,
  String routine,
  String day,
) {
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

void showFarmclubSignupBottomSheet(
  BuildContext context,
  String title,
  String subTitle,
) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: FarmusThemeColor.white,
    builder: (BuildContext context) {
      return FarmclubSignupBottomSheetContent(
        title: title,
        subTitle: subTitle,
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.of(context).pop();
              });
              return const CheckDialog(
                text: "팜클럽에 가입했어요",
              );
            },
          );
        },
      );
    },
  );
}
