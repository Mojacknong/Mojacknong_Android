import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view/on_boarding/component/on_board_select_box.dart';
import 'package:farmus/common/select_box.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingFourth extends ConsumerWidget {
  const OnBoardingFourth({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final level = ref.watch(onBoardingLevelProvider);
    final isFirstSelect = level.isFirstSelect;
    final isSecondSelect = level.isSecondSelect;
    final isThirdSelect = level.isThirdSelect;
    final isFourthSelect = level.isFourthSelect;
    final selectBox = ref.read(onBoardingLevelProvider.notifier);

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
                    mainText: "홈파밍 경험이 있으신가요?",
                    subText: "경험을 고려해 채소를 추천해드릴 예정이에요.",
                  ),
                ),
                const SizedBox(height: 16),
                SelectBox(
                  selectBox: () {
                    selectBox.selectFirstBox();
                  },
                  enabled: isFirstSelect,
                  selectBoxContent: const OnBoardSelectBox(
                    title: "홈파밍 입문",
                    content: "홈파밍이 아예 처음이에요",
                  ),
                ),
                SelectBox(
                  selectBox: () {
                    selectBox.selectSecondBox();
                  },
                  enabled: isSecondSelect,
                  selectBoxContent: const OnBoardSelectBox(
                    title: "홈파밍 초보",
                    content: "시도했지만 채소를 수확하진 못했어요",
                  ),
                ),
                SelectBox(
                  selectBox: () {
                    selectBox.selectThirdBox();
                  },
                  enabled: isThirdSelect,
                  selectBoxContent: const OnBoardSelectBox(
                    title: "홈파밍 중급",
                    content: "채소를 잘 관리하고 재배하는 법을 알고 있어요",
                  ),
                ),
                SelectBox(
                  selectBox: () {
                    selectBox.selectFourthBox();
                  },
                  enabled: isFourthSelect,
                  selectBoxContent: const OnBoardSelectBox(
                    title: "홈파밍 고수",
                    content: "집에서 키울 수 있는 모든 채소를 섭렵했어요",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
