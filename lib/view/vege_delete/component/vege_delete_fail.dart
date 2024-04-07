import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view_model/vege_delete/vege_delete_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/select_box.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDeleteFail extends ConsumerWidget {
  const VegeDeleteFail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectProvider = ref.watch(vegeDeleteFailProvider.notifier);
    var boxIndex = ref.watch(vegeDeleteFailProvider);

    return Column(
      children: <Widget>[
        const MainSubTitle(
          mainText: "홈파밍에 어려움을 겪고 있나요?\n팜클럽에서 도움을 얻을 수 있어요.",
          subText: '',
        ),
        const SizedBox(
          height: 32,
        ),
        SelectBox(
          selectBox: () {
            selectProvider.selectedBox('farmclub');
          },
          enabled: boxIndex == 'farmclub',
          selectBoxContent: Container(
            margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            alignment: Alignment.center,
            child: const Text(
              '팜클럽에서 도움을 받아볼래요',
              style: FarmusThemeTextStyle.darkMedium15,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SelectBox(
          selectBox: () {
            selectProvider.selectedBox('fin');
          },
          enabled: boxIndex == 'fin',
          selectBoxContent: Container(
            margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            alignment: Alignment.center,
            child: const Text(
              '괜찮아요, 이대로 종료할게요',
              style: FarmusThemeTextStyle.darkMedium15,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Visibility(
          visible: boxIndex == 'fin' ? true : false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/image/ic_alert_circle.svg'),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "종료하면 채소 히스토리에 등록되지 않아요",
                style: FarmusThemeTextStyle.redMedium14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
