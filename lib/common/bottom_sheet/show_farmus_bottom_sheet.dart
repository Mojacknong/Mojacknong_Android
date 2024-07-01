import 'package:farmus/common/bottom_sheet/primary_action_sheet.dart';
import 'package:farmus/common/dialog/check_dialog.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_sign_up_bottom_sheet_content.dart';
import 'package:farmus/view/routine/component/routine_bottom_sheet_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../view/farmclub/component/farmclub_change_bottom_sheet_content.dart';
import '../../view/farmclub/component/farmclub_exit_bottom_sheet_content.dart';
import '../../view/main/main_screen.dart';
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
        subTitle: " ",
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
    builder: (BuildContext context) => PrimaryActionSheet(
      message: "팜어스를 탈퇴하시겠어요?",
      messagePadding: const EdgeInsets.symmetric(vertical: 8),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {},
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: SvgPicture.asset(
                    'assets/image/ic_alert_circle.svg',
                  ),
                ),
                const SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '지금까지의 홈파밍 기록이 모두 사라져요',
                      style: FarmusThemeTextStyle.redMedium15,
                    ),
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '\n\n채소/팜클럽 히스토리가 모두 사라져요\n\n미션/루틴을 체크할 수 없어요\n\n성장일기가 모두 사라져요\n',
                              style: FarmusThemeTextStyle.gray2Medium13,
                              children: [],
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
      cancelButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoActionSheetAction(
            child: const Text(
              "취소",
              style: FarmusThemeTextStyle.darkMedium15,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 50,
            child: VerticalDivider(
              color: FarmusThemeColor.gray4,
            ),
          ),
          CupertinoActionSheetAction(
            child: const Text(
              "탈퇴하기",
              style: FarmusThemeTextStyle.darkMedium15,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
              );
            },
          ),
        ],
      ),
    ),
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
