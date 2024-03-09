import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/on_boarding/component/select_box.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_title.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingSecond extends ConsumerWidget {
  const OnBoardingSecond({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final motivation = ref.watch(onBoardingMotivationProvider);

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
                  child: OnBoardingTitle(
                    mainText: "홈파밍을 하는 이유가 무엇인가요?",
                    subText: "이유에 맞는 응원 메시지를 전해드릴게요. (복수 선택)",
                  ),
                ),
                const SizedBox(height: 16),
                SelectBox(
                  title: "알뜰살뜰",
                  content: "물가가 올라서 채솟값을 절약하고 싶어요",
                  selectBox: () {
                    ref.read(onBoardingMotivationProvider.notifier).selectBox();
                  },
                  backgroundColor:
                      motivation.isSelect ? FarmusThemeColor.green3 : null,
                  borderColor: motivation.isSelect
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
