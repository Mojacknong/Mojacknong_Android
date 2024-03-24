import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/common/dialog/primary_dialog.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/vegi_add/component/home_vegi_add_second.dart';
import 'package:farmus/view_model/home/home_vegi_add_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/theme/farmus_theme_color.dart';
import 'component/home_vegi_add_first.dart';

class HomeVegiAddScreen extends ConsumerWidget {
  const HomeVegiAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVegiInfo = ref.watch(homeVegiInfoAddProvider);
    final currentPageIndex = ref.watch(homeVegiAddMoveProvider);
    final movePage = ref.read(homeVegiAddMoveProvider.notifier);

    var isVegiSelectedComplete = isVegiInfo.isVegiSelectComplete;
    var isVegiAddInfoComplete = isVegiInfo.isVegiAddInfoComplete;

    Color getButtonTextColor(String currentPageIndex,
        bool isVegiSelectedComplete, bool isVegiAddInfoComplete) {
      switch (currentPageIndex) {
        case "first":
          return isVegiSelectedComplete
              ? FarmusThemeColor.white
              : FarmusThemeColor.gray3;
        case "second":
          return isVegiAddInfoComplete
              ? FarmusThemeColor.white
              : FarmusThemeColor.gray3;
        default:
          return FarmusThemeColor.gray3;
      }
    }

    Color getButtonBackgroundColor(String currentPageIndex,
        bool isVegiSelectedComplete, bool isVegiAddInfoComplete) {
      switch (currentPageIndex) {
        case "first":
          return isVegiSelectedComplete
              ? FarmusThemeColor.primary
              : FarmusThemeColor.gray4;
        case "second":
          return isVegiAddInfoComplete
              ? FarmusThemeColor.primary
              : FarmusThemeColor.gray4;
        default:
          return FarmusThemeColor.gray4;
      }
    }

    return Scaffold(
      appBar: PrimaryAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/image/ic_left.svg"),
        ),
        title: "채소 등록",
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Consumer(builder: (context, ref, _) {
              switch (currentPageIndex) {
                case "first":
                  return const HomeVegiAddFirst();
                case "second":
                  return const HomeVegiAddSecond();
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
                            movePage.moveToSecondPage();
                          case "second":
                            Navigator.pop(context);
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(const Duration(seconds: 2), () {
                                    Navigator.of(context).pop();
                                  });
                                  return PrimaryDialog(
                                    title: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          SvgPicture.asset(
                                              "assets/image/ic_check.svg"),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Text(
                                            "새 채소가 등록되었어요",
                                            style:
                                                FarmusThemeTextStyle.darkMedium16,
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                        }
                      },
                      enabled: currentPageIndex == "first"
                          ? isVegiSelectedComplete
                          : isVegiAddInfoComplete,
                      textColor: getButtonTextColor(currentPageIndex,
                          isVegiSelectedComplete, isVegiAddInfoComplete),
                      backgroundColor: getButtonBackgroundColor(currentPageIndex,
                          isVegiSelectedComplete, isVegiAddInfoComplete),
                      borderColor: FarmusThemeColor.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
