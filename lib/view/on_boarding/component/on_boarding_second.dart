import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view/on_boarding/component/select_box.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingSecond extends ConsumerWidget {
  const OnBoardingSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final motivation = ref.watch(onBoardingMotivationProvider);
    final selectBox = ref.read(onBoardingMotivationProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: MainSubTitle(
                    mainText: "홈파밍을 하는 이유가 무엇인가요?",
                    subText: "이유에 맞는 응원 메시지를 전해드릴게요. (복수 선택)",
                  ),
                ),
                const SizedBox(height: 16),
                SelectBox(
                  title: "알뜰살뜰",
                  content: "물가가 올라서 채솟값을 절약하고 싶어요",
                  selectBox: () {
                    selectBox.selectFirstBox();
                  },
                  backgroundColor:
                      motivation.isFirstSelect ? FarmusThemeColor.green3 : null,
                  borderColor: motivation.isFirstSelect
                      ? FarmusThemeColor.white
                      : FarmusThemeColor.gray4,
                ),
                SelectBox(
                  title: "건강과 웰빙",
                  content: "직접 키워서 먹으면 안심이 될 것 같아요",
                  selectBox: () {
                    selectBox.selectSecondBox();
                  },
                  backgroundColor: motivation.isSecondSelect
                      ? FarmusThemeColor.green3
                      : null,
                  borderColor: motivation.isSecondSelect
                      ? FarmusThemeColor.white
                      : FarmusThemeColor.gray4,
                ),
                SelectBox(
                  title: "심리적 안정",
                  content: "채소를 기르며 마음의 안정을 찾고 싶어요",
                  selectBox: () {
                    selectBox.selectThirdBox();
                  },
                  backgroundColor:
                      motivation.isThirdSelect ? FarmusThemeColor.green3 : null,
                  borderColor: motivation.isThirdSelect
                      ? FarmusThemeColor.white
                      : FarmusThemeColor.gray4,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
