import 'package:farmus/common/farmus_theme_color.dart';
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
    final provider = ref.watch(onBoardingProfileProvider);
    final special = ref.watch(onBoardingSpecialCharactersProvider);

    return Scaffold(
      appBar: const OnBoardingAppBar(),
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
                final currentPageIndex = ref.watch(onBoardingMoveProvider);

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
            child: OnBoardingNextButton(
              text: "다음",
              onPressed: () {
                // 프로필 설정이 완료되었는지 확인
                ref.read(onBoardingMoveProvider.notifier).moveToNextPage();
              },
              // 프로필 이미지, 닉네임을 설정하고 특수문자가 없을 때 활성화
              enabled: provider.isProfileComplete && !special,
            ),
          ),
        ],
      ),
    );
  }
}
