import 'package:farmus/common/app_bar/page_index_app_bar.dart';
import 'package:farmus/view/vegi_delete/commponent/vegi_delete_reason.dart';
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
    ref.read(homeVegiAddMoveProvider.notifier).moveToFirstPage();
    final boxIndex = ref.watch(vegiDeleteProvider);
    final currentPageIndex = ref.read(homeVegiAddMoveProvider);

    return Scaffold(
      appBar: const PageIndexAppBar(
        currentIndex: '1',
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
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Consumer(builder: (context, ref, _) {
                switch (currentPageIndex) {
                  case 'first':
                    return const VegiDeleteReason();
                  case 'second':
                    return const VegiDeleteReason();
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
                    child: OnBoardingButton(
                      text: "이전",
                      onPressed: () {},
                      enabled: true,
                      textColor: FarmusThemeColor.gray1,
                      backgroundColor: FarmusThemeColor.white,
                      borderColor: FarmusThemeColor.gray3,
                    ),
                  ),
                ),
                Expanded(
                  child: OnBoardingButton(
                    text: "다음",
                    onPressed: () {},
                    enabled: boxIndex != '',
                    textColor: boxIndex != ''
                        ? FarmusThemeColor.white
                        : FarmusThemeColor.gray3,
                    backgroundColor: boxIndex != ''
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
