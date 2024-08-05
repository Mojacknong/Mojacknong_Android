import 'package:farmus/common/app_bar/page_index_app_bar.dart';
import 'package:farmus/common/button/white_color_button.dart';
import 'package:farmus/view/vege_delete/component/vege_delete_fail.dart';
import 'package:farmus/view_model/home/home_vege_add_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/button/primary_color_button.dart';
import '../../common/dialog/check_dialog.dart';
import '../../common/theme/farmus_theme_color.dart';
import '../../view_model/vege_delete/vege_delete_provider.dart';
import 'component/vege_delete_reason.dart';
import 'component/vege_delete_success.dart';

class VegeDeleteScreen extends ConsumerWidget {
  const VegeDeleteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boxIndex = ref.watch(vegeDeleteReasonProvider);
    final currentPageIndex = ref.watch(homeVegeAddMoveProvider);
    final movePage = ref.read(homeVegeAddMoveProvider.notifier);
    final successButtonText = ref.watch(vegeDeleteSuccessProvider);
    final failProvider = ref.watch(vegeDeleteFailProvider);
    String nextButtonText = '다음';
    String currentIndex;
    bool enabled = false;
    Widget? screenChild;
    Function()? onPressed;

    switch (currentPageIndex) {
      case "first":
        currentIndex = "1";
        enabled = boxIndex != '';
        screenChild = const SingleChildScrollView(
          child: VegeDeleteReason(),
        );
        onPressed = () {
          ref.read(vegeDeleteSuccessProvider.notifier).reset();
          ref.read(vegeDeleteFailProvider.notifier).selectedBox('');
          movePage.moveToSecondPage();
        };
        break;
      case "second":
        currentIndex = "2";
        switch (boxIndex) {
          case 'success':
            enabled = true;
            if (successButtonText.isComplete != true) {
              nextButtonText = '나중에 등록하기';
            } else {
              nextButtonText = '다음';
            }
            screenChild = const SingleChildScrollView(
              child: VegeDeleteSuccess(),
            );
            break;
          case "fail":
          case 'noting':
            enabled = failProvider != '';
            nextButtonText = '다음';
            screenChild = const SingleChildScrollView(
              child: VegeDeleteFail(),
            );
            break;
        }
        onPressed = () {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (BuildContext context) {
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.of(context).pop();
              });
              return const CheckDialog(
                text: "홈파밍을 종료했어요",
              );
            },
          );
        };
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
                      child: WhiteColorButton(
                        text: "이전",
                        onPressed: () {
                          movePage.moveToFirstPage();
                        },
                        enabled: true,
                      ),
                    ),
                  ),
                  Expanded(
                    child: PrimaryColorButton(
                      text: nextButtonText,
                      fontSize: 15,
                      onPressed: onPressed!,
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
