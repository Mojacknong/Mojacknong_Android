import 'package:farmus/common/dialog/check_dialog.dart';
import 'package:farmus/view/farmclub/component/farmclub_change_bottom_sheet_content.dart';
import 'package:farmus/view/farmclub/component/farmclub_exit_bottom_sheet_content.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_sign_up_bottom_sheet_content.dart';
import 'package:farmus/view/routine/component/routine_bottom_sheet_content.dart';
import 'package:farmus/view_model/farmclub_sign_up/farmclub_sign_up_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  WidgetRef ref,
  String title,
) {
  final vegeList = ref.watch(farmclubSignUpVegeSelectNotifierProvider);
  final subTitle = vegeList.isEmpty
      ? "내 텃받에 등록된 채소로만 가입할 수 있어요\n새 채소를등록해보세요!"
      : "내 채소에 등록된 채소로 팜클럽에 가입할 수 있어요";

  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return FarmclubSignUpBottomSheetContent(
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

void showFarmclubExitBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: FarmusThemeColor.white,
    builder: (BuildContext context) {
      return const FarmclubExitBottomSheetContent();
    },
  );
}

void showFarmclubChangeBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: FarmusThemeColor.white,
    builder: (BuildContext context) {
      return const FarmclubChangeBottomSheetContent();
    },
  );
}
