import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/dialog/check_dialog.dart';
import 'package:farmus/view_model/home/home_vege_add_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/theme/farmus_theme_color.dart';
import 'component/home_vege_add_first.dart';
import 'component/home_vege_add_second.dart';

class HomeVegeAddScreen extends ConsumerWidget {
  const HomeVegeAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVegeInfo = ref.watch(homeVegeInfoAddProvider);
    final currentPageIndex = ref.watch(homeVegeAddMoveProvider);
    final movePage = ref.read(homeVegeAddMoveProvider.notifier);

    var isVegeSelectedComplete = isVegeInfo.isVegeSelectComplete;
    var isVegeAddInfoComplete = isVegeInfo.isVegeAddInfoComplete;

    Color getButtonTextColor(String currentPageIndex,
        bool isVegeSelectedComplete, bool isVegeAddInfoComplete) {
      switch (currentPageIndex) {
        case "first":
          return isVegeSelectedComplete
              ? FarmusThemeColor.white
              : FarmusThemeColor.gray3;
        case "second":
          return isVegeAddInfoComplete
              ? FarmusThemeColor.white
              : FarmusThemeColor.gray3;
        default:
          return FarmusThemeColor.gray3;
      }
    }

    Color getButtonBackgroundColor(String currentPageIndex,
        bool isVegeSelectedComplete, bool isVegeAddInfoComplete) {
      switch (currentPageIndex) {
        case "first":
          return isVegeSelectedComplete
              ? FarmusThemeColor.primary
              : FarmusThemeColor.gray4;
        case "second":
          return isVegeAddInfoComplete
              ? FarmusThemeColor.primary
              : FarmusThemeColor.gray4;
        default:
          return FarmusThemeColor.gray4;
      }
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: const BackLeftTitleAppBar(
          title: "채소 등록",
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Consumer(builder: (context, ref, _) {
                switch (currentPageIndex) {
                  case "first":
                    return const HomeVegeAddFirst();
                  case "second":
                    return const HomeVegeAddSecond();
                  default:
                    return Container();
                }
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Visibility(
                      visible: currentPageIndex != "first",
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PrimaryButton(
                          width: double.infinity,
                          height: 48,
                          text: "이전",
                          onPressed: () {
                            switch (currentPageIndex) {
                              case "first":
                                return;
                              case "second":
                                movePage.moveToFirstPage();
                            }
                          },
                          enabled: true,
                          textColor: FarmusThemeColor.gray1,
                          backgroundColor: FarmusThemeColor.white,
                          borderColor: FarmusThemeColor.gray3,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PrimaryButton(
                        width: double.infinity,
                        height: 48,
                        text: currentPageIndex == "first" ? "다음" : "완료",
                        onPressed: () {
                          switch (currentPageIndex) {
                            case "first":
                              movePage.moveToSuccessPage();
                            case "second":
                              Navigator.pop(context);
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(const Duration(seconds: 2),
                                      () {
                                    Navigator.of(context).pop();
                                  });
                                  return const CheckDialog(
                                    text: "새 채소가 등록되었어요",
                                  );
                                },
                              );
                          }
                        },
                        enabled: currentPageIndex == "first"
                            ? isVegeSelectedComplete
                            : isVegeAddInfoComplete,
                        textColor: getButtonTextColor(currentPageIndex,
                            isVegeSelectedComplete, isVegeAddInfoComplete),
                        backgroundColor: getButtonBackgroundColor(
                            currentPageIndex,
                            isVegeSelectedComplete,
                            isVegeAddInfoComplete),
                        borderColor: FarmusThemeColor.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
