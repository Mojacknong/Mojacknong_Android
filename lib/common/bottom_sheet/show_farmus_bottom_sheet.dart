import 'package:farmus/common/bottom_sheet/primary_action_sheet.dart';
import 'package:farmus/common/dialog/check_dialog.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_open_bottom_sheet_content.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_sign_up_bottom_sheet_content.dart';
import 'package:farmus/view/routine/component/routine_bottom_sheet_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart';

import '../../view/farmclub/component/farmclub_change_bottom_sheet_content.dart';
import '../../view/farmclub/component/farmclub_exit_bottom_sheet_content.dart';
import '../../view/main/main_screen.dart';
import '../../view/my_setting/component/farmclub_quit_bottom_sheet_content.dart';
import '../../view/sign_in/sign_in_screen.dart';
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
  final int farmClubId,
  final String myVeggieInfoId,
  BuildContext context,
  WidgetRef ref,
  String title,
) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      print(myVeggieInfoId);
      return FarmclubSignUpBottomSheetContent(
        infoId: myVeggieInfoId,
        id: farmClubId,
        subTitle: "",
        title: title,
        onPressed: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MainScreen(selectedIndex: 1,)), (route) => false);
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

void showLogoutActionSheet(BuildContext context) {
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) => PrimaryActionSheet(
      title: "로그아웃 하시겠어요?",
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SignInScreen()),
            );
          },
          child: const Text(
            "로그아웃 하기",
            style: FarmusThemeTextStyle.redMedium15,
          ),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "취소",
            style: FarmusThemeTextStyle.dark2Medium15,
          ),
        ),
      ],
    ),
  );
}

void showQuitActionSheet(BuildContext context) {
  showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return const FarmclubQuitBottomSheetContent();
      }
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

void showAllVeggieSignedActionSheet(BuildContext context, String text) {
  showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return FarmclubOpenBottomSheetContent(text: text);
      }
  );
}
