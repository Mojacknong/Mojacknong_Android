import 'package:farmus/common/bottom_sheet/delete_bottom_sheet_content.dart';
import 'package:farmus/common/bottom_sheet/report_bottom_sheet.dart';
import 'package:farmus/common/dialog/check_dialog.dart';
import 'package:farmus/view/farmclub_open/component/farmclub_open_bottom_sheet_content.dart';
import 'package:farmus/view/farmclub_sign_up/component/farmclub_sign_up_bottom_sheet_content.dart';
import 'package:farmus/view/my_vege/component/veggie_delete_bottom_sheet_content.dart';
import 'package:farmus/view/routine/component/routine_bottom_sheet_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view/farmclub/component/farmclub_change_bottom_sheet_content.dart';
import '../../view/farmclub/component/farmclub_exit_bottom_sheet_content.dart';
import '../../view/main/main_screen.dart';
import '../../view/my_setting/component/farmclub_quit_bottom_sheet_content.dart';
import '../../view/my_setting/component/farmus_logout_bottom_sheet.dart';
import '../theme/farmus_theme_color.dart';

void showRoutineAddBottomSheet(
  BuildContext context,
  int myVeggieId,
) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: FarmusThemeColor.white,
    builder: (BuildContext context) {
      return RoutineBottomSheetContent(
        myVeggieId: myVeggieId,
        routine: '',
        isCreate: true,
      );
    },
  );
}

void showRoutineEditBottomSheet(
  BuildContext context,
  int myVeggieId,
  int routineId,
  String routine,
  int day,
) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: FarmusThemeColor.white,
    builder: (BuildContext context) {
      return RoutineBottomSheetContent(
        myVeggieId: myVeggieId,
        routineId: routineId,
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
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => const MainScreen(
                        selectedIndex: 2,
                      )),
              (route) => false);
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
    builder: (BuildContext context) {
      return const FarmusLogoutBottomSheetContent();
    },
  );
}

void showQuitActionSheet(BuildContext context) {
  showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return const FarmclubQuitBottomSheetContent();
      });
}

void showFarmclubExitBottomSheet(BuildContext context, String farmClubName, int farmClubId) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: FarmusThemeColor.white,
    builder: (BuildContext context) {
      return FarmclubExitBottomSheetContent(farmClubName: farmClubName, farmClubId : farmClubId);
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
      });
}

void showVeggieDeleteBottomSheet(BuildContext context) {
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return const VeggieDeleteBottomSheetContent();
    },
  );
}

void showDeleteBottomSheet(
    BuildContext context, int id, int? myVeggieId, String type) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: FarmusThemeColor.white,
    builder: (BuildContext context) {
      return DeleteBottomSheetContent(
          id: id, myVeggieId: myVeggieId, type: type);
    },
  );
}

void showReportBottomSheet(
    BuildContext context, String title, String dialogText) {
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return ReportBottomSheet(
        title: title,
        dialogText: dialogText,
      );
    },
  );
}
