import 'package:farmus/common/app_bar/page_index_app_bar.dart';
import 'package:farmus/view/vegi_delete/commponent/vegi_delete_reason.dart';
import 'package:farmus/view/vegi_delete/commponent/vegi_delete_success.dart';
import 'package:farmus/view_model/home/home_vegi_add_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/button/on_boarding_button.dart';
import '../../common/theme/farmus_theme_color.dart';
import '../../view_model/vegi_delete/vegi_delete_provider.dart';

class VegiDeleteScreen extends ConsumerWidget {
  const VegiDeleteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boxIndex = ref.watch(vegiDeleteProvider);
    final currentPageIndex = ref.watch(homeVegiAddMoveProvider);
    final movePage = ref.read(homeVegiAddMoveProvider.notifier);

    String nextButtonText = "다음";
    String currentIndex;
    bool enabled = false;
    Widget? screenChild;
    Function()? onPressed;

    switch (currentPageIndex) {
      case "first":
        currentIndex = "1";
        enabled = boxIndex != '';
        screenChild = const SingleChildScrollView(
          child: VegiDeleteReason(),
        );
        onPressed = () {
          ref.read(vegiDeleteSuccessProvider.notifier).reset();
          movePage.moveToSecondPage();
        };
        break;
      case "second":
        currentIndex = "2";
        enabled = true;
        nextButtonText = '나중에 등록하기';
        screenChild = const SingleChildScrollView(
          child: VegiDeleteSuccess(),
        );
        onPressed = () {};
        break;
      default:
        currentIndex = "0";
    }

    return Scaffold(
      appBar: PageIndexAppBar(
        currentIndex: currentIndex,
        maxIndex: '2',
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 1,
            color: FarmusThemeColor.gray4,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 24.0),
                child: screenChild),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Visibility(
                    visible: currentPageIndex != "first",
                    child: OnBoardingButton(
                      text: "이전",
                      onPressed: () {
                        movePage.moveToFirstPage();
                      },
                      enabled: true,
                      textColor: FarmusThemeColor.gray1,
                      backgroundColor: FarmusThemeColor.white,
                      borderColor: FarmusThemeColor.gray3,
                    ),
                  ),
                ),
                Expanded(
                  child: OnBoardingButton(
                    text: nextButtonText,
                    onPressed: onPressed!,
                    enabled: enabled,
                    textColor: enabled
                        ? FarmusThemeColor.white
                        : FarmusThemeColor.gray3,
                    backgroundColor: enabled
                        ? FarmusThemeColor.primary
                        : FarmusThemeColor.gray4,
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
