import 'dart:io';

import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/button/white_color_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/model/on_boarding/on_boarding_user_profile_model.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_first.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_third.dart';
import 'package:farmus/view/on_boarding/on_boarding_finish_screen.dart';
import 'package:farmus/view_model/on_boarding//on_boarding_motivation_notifier.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_user_profile.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_bar/page_index_app_bar.dart';
import '../../view_model/on_boarding/on_boarding_finish_notifier.dart';
import '../../view_model/on_boarding/on_boarding_level_notifier.dart';
import 'component/on_boarding_fourth.dart';
import 'component/on_boarding_second.dart';

class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(onBoardingProfileSetProvider);
    final isSpecial = ref.watch(onBoardingSpecialCharactersProvider);
    final currentPageIndex = ref.watch(onBoardingMoveProvider);
    final motivation = ref.watch(onBoardingMotivationNotifierProvider);
    final level = ref.watch(onBoardingLevelNotifierProvider);
    final movePage = ref.read(onBoardingMoveProvider.notifier);

    String nextButtonText = "다음";
    String currentIndex;
    bool enabled = false;

    List<String> motivationList = [];

    switch (currentPageIndex) {
      case "first":
        currentIndex = "1";
        enabled = profile.isProfileComplete && !isSpecial;
        break;
      case "second":
        currentIndex = "2";
        enabled = true;
        nextButtonText = '다음';
        break;
      case "third":
        currentIndex = "3";
        enabled =
            ref.watch(onBoardingLevelNotifierProvider).value?.isTimeComplete ??
                false;
        false;
        break;
      case "fourth":
        currentIndex = "4";
        enabled = level.value!.isLevelComplete;
        nextButtonText = '완료';
        break;
      default:
        currentIndex = "0";
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: PageIndexAppBar(
          currentIndex: currentIndex,
          maxIndex: "4",
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
                  switch (currentPageIndex) {
                    case "first":
                      return const OnBoardingFirst();
                    case "second":
                      return const OnBoardingSecond();
                    case "third":
                      return const OnBoardingThird();
                    case "fourth":
                      return const OnBoardingFourth();
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
                      child: WhiteColorButton(
                        text: "이전",
                        fontPadding: 12.0,
                        onPressed: () {
                          switch (currentPageIndex) {
                            case "first":
                              return;
                            case "second":
                              movePage.moveToFirstPage();
                            case "third":
                              movePage.moveToSecondPage();
                            case "fourth":
                              movePage.moveToThirdPage();
                          }
                        },
                        enabled: true,
                      ),
                    ),
                  ),
                  Expanded(
                    child: PrimaryColorButton(
                      text: nextButtonText,
                      fontPadding: 12.0,
                      onPressed: () {
                        switch (currentPageIndex) {
                          case "first":
                            ref
                                .read(onBoardingUserProfileModelNotifierProvider
                                    .notifier)
                                .postUserProfile(
                                  OnBoardingUserProfileModel(
                                      file: File(profile.profileImage!.path),
                                      nickName: profile.nickname!),
                                );
                            movePage.moveToSecondPage();
                          case "second":
                            if (motivation.value!.isFirstSelect) {
                              motivationList.add('알뜰살뜰');
                            }
                            if (motivation.value!.isSecondSelect) {
                              motivationList.add('건강과웰빙');
                            }
                            if (motivation.value!.isThirdSelect) {
                              motivationList.add('심리적안정');
                            }
                            ref
                                .read(onBoardingMotivationNotifierProvider
                                    .notifier)
                                .postMotivation(motivationList);
                            movePage.moveToThirdPage();
                          case "third":
                            movePage.moveToFourthPage();
                          case "fourth":
                            ref
                                .read(onBoardingLevelNotifierProvider.notifier)
                                .postLevel();
                            ref.read(onBoardingFinishNotifierProvider.notifier).onBoardingComplete();
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const OnBoardingFinishScreen(),
                              ),
                            );
                        }
                      },
                      enabled: enabled,
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
