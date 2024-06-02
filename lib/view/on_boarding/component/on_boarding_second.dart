import 'package:farmus/common/select_box.dart';
import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view/on_boarding/component/on_board_select_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../view_model/on_boarding/on_boarding_motivation_notifier.dart';

class OnBoardingSecond extends ConsumerWidget {
  const OnBoardingSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final motivation = ref.watch(onBoardingMotivationNotifierProvider);
    final selectBox = ref.read(onBoardingMotivationNotifierProvider.notifier);

    if (motivation.value != null) {
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: SelectBox(
                      selectBox: () {
                        selectBox.selectFirstBox();
                      },
                      enabled: motivation.value!.isFirstSelect,
                      selectBoxContent: const OnBoardSelectBox(
                        title: "알뜰살뜰",
                        content: "물가가 올라서 채솟값을 절약하고 싶어요",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: SelectBox(
                      selectBox: () {
                        selectBox.selectSecondBox();
                      },
                      enabled: motivation.value!.isSecondSelect,
                      selectBoxContent: const OnBoardSelectBox(
                        title: "건강과 웰빙",
                        content: "직접 키워서 먹으면 안심이 될 것 같아요",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: SelectBox(
                      selectBox: () {
                        selectBox.selectThirdBox();
                      },
                      enabled: motivation.value!.isThirdSelect,
                      selectBoxContent: const OnBoardSelectBox(
                        title: "심리적 안정",
                        content: "채소를 기르며 마음의 안정을 찾고 싶어요",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      return const CircularProgressIndicator();
    }
  }
}
