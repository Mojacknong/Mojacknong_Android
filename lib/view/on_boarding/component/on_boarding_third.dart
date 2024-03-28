import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view/on_boarding/component/on_board_select_box.dart';
import 'package:farmus/common/select_box.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingThird extends ConsumerWidget {
  const OnBoardingThird({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.watch(onBoardingTimeProvider);
    final isFirstSelect = time.isFirstSelect;
    final isSecondSelect = time.isSecondSelect;
    final isThirdSelect = time.isThirdSelect;
    final selectBox = ref.read(onBoardingTimeProvider.notifier);

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
                    mainText: "하루에 얼마나 시간을 쓰실 수 있나요?",
                    subText: "여유 시간을 고려해 채소를 추천해드릴 예정이에요.",
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: SelectBox(
                    selectBox: () {
                      selectBox.selectFirstBox();
                    },
                    enabled: isFirstSelect,
                    selectBoxContent: const OnBoardSelectBox(
                      title: "많은 시간을 쓸 수 있어요",
                      content: "하루 30분 이상",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: SelectBox(
                    selectBox: () {
                      selectBox.selectSecondBox();
                    },
                    enabled: isSecondSelect,
                    selectBoxContent: const OnBoardSelectBox(
                      title: "아침 저녁으로 할 수 있어요",
                      content: "하루 10~30분",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: SelectBox(
                    selectBox: () {
                      selectBox.selectThirdBox();
                    },
                    enabled: isThirdSelect,
                    selectBoxContent: const OnBoardSelectBox(
                      title: "바빠서 할 시간이 별로 없어요",
                      content: "하루 10분 미만",
                    ),
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
