import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/view/vegi_add/component/home_vegi_add_second.dart';
import 'package:farmus/view_model/home/home_vegi_add_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/theme/farmus_theme_color.dart';
import 'component/home_vegi_add_first.dart';

class HomeVegiAddScreen extends ConsumerWidget {
  const HomeVegiAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVegiSelected = ref.watch(homeVegiInfoAddProvider);
    final currentPageIndex = ref.watch(homeVegiAddMoveProvider);
    final movePage = ref.read(homeVegiAddMoveProvider.notifier);

    var isVegiAddInfoComplete = isVegiSelected.isVegiAddInfoComplete;

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
                    child: PrimaryButton(
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
                Expanded(
                  child: PrimaryButton(
                    text: currentPageIndex == "first" ? "다음" : "완료",
                    onPressed: () {
                      switch (currentPageIndex) {
                        case "first":
                          movePage.moveToSecondPage();
                      }
                    },
                    enabled: isVegiAddInfoComplete,
                    textColor: isVegiAddInfoComplete
                        ? FarmusThemeColor.white
                        : FarmusThemeColor.gray3,
                    backgroundColor: isVegiAddInfoComplete
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
