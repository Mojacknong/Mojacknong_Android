import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/common/select_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../view_model/vege_delete/vege_delete_provider.dart';

class VegeDeleteReason extends ConsumerWidget {
  const VegeDeleteReason({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boxIndex = ref.watch(vegeDeleteProvider);

    return Column(
      children: [
        const MainSubTitle(
            mainText: '홈파밍을 끝내는 이유가 무엇인가요?',
            subText: '재배에 성공했다면 히스토리에 결과를 기록해주세요'),
        const SizedBox(
          height: 32,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: SelectBox(
                selectBox: () {
                  ref.read(vegeDeleteProvider.notifier).selectedBox('success');
                },
                enabled: boxIndex == 'success',
                selectBoxContent: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Column(
                    children: [
                      Image.asset("assets/image/img_vege_color.png"),
                      const Text(
                        '재배에 성공했어요',
                        style: FarmusThemeTextStyle.darkMedium15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: SelectBox(
                selectBox: () {
                  ref.read(vegeDeleteProvider.notifier).selectedBox('fail');
                },
                enabled: boxIndex == 'fail',
                selectBoxContent: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Column(
                    children: [
                      Image.asset("assets/image/img_vege_gray.png"),
                      const Text(
                        '재배에 실패했어요',
                        style: FarmusThemeTextStyle.darkMedium15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SelectBox(
          selectBox: () {
            ref.read(vegeDeleteProvider.notifier).selectedBox('noting');
          },
          enabled: boxIndex == 'noting',
          selectBoxContent: Container(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            alignment: Alignment.center,
            child: const Text(
              '둘 다 아니지만 그만둘래요',
              style: FarmusThemeTextStyle.darkMedium15,
            ),
          ),
        ),
      ],
    );
  }
}
