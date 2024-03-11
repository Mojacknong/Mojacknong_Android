import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_before_button.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_next_button.dart';
import 'package:farmus/view/on_boarding/on_boarding_first.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'on_boarding_app_bar.dart';
import 'on_boarding_second.dart';

class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(onBoardingProfileProvider);
    final isSpecial = ref.watch(onBoardingSpecialCharactersProvider);
    final currentPageIndex = ref.watch(onBoardingMoveProvider);
    final movePage = ref.read(onBoardingMoveProvider.notifier);

    String currentIndex;
    switch (currentPageIndex) {
      case "first":
        currentIndex = "1";
        break;
      case "second":
        currentIndex = "2";
        break;
      case "third":
        currentIndex = "3";
        break;
      default:
        currentIndex = "0";
    }

    return Scaffold(
      appBar: OnBoardingAppBar(
        currentIndex: currentIndex,
      ),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          const Divider(
            thickness: 1,
            color: FarmusThemeColor.gray4,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer(builder: (context, ref, _) {
                // 현재 페이지 인덱스에 따라 적절한 화면 표시
                switch (currentPageIndex) {
                  case "first":
                    return const OnBoardingFirst();
                  case "second":
                    return const OnBoardingSecond();
                  default:
                    return Container();
                }
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Visibility(
                    visible: currentPageIndex != "first",
                    child: OnBoardingBeforeButton(
                      text: "이전",
                      onPressed: () {
                        switch (currentPageIndex) {
                          case "first":
                            return;
                          case "second":
                            movePage.moveToFirstPage();
                          case "third":
                            movePage.moveToSecondPage();
                        }
                      },
                      enabled: true,
                      textColor: FarmusThemeColor.gray1,
                      backgroundColor: FarmusThemeColor.white,
                      borderColor: FarmusThemeColor.gray3,
                    ),
                  ),
                ),
                Expanded(
                  child: OnBoardingNextButton(
                    text: "다음",
                    onPressed: () {
                      switch (currentPageIndex) {
                        case "first":
                          movePage.moveToSecondPage();
                        case "second":
                          movePage.moveToThirdPage();
                      }
                    },
                    // 프로필 이미지, 닉네임을 설정하고 특수문자가 없을 때 활성화
                    enabled: profile.isProfileComplete && !isSpecial,
                    textColor: FarmusThemeColor.white,
                    backgroundColor: FarmusThemeColor.primary,
                    borderColor: FarmusThemeColor.white,
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
