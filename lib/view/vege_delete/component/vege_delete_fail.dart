import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view_model/vege_delete/vege_delete_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/button/select_box_basic_content.dart';
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
          mainText: '홈파밍을 정말 종료하시겠어요?',
          subText: '',
        ),
        SelectBox(
          selectBox: () {
            selectProvider.selectedBox('fin');
          },
          enabled: boxIndex == 'fin',
          selectBoxContent: const SelectBoxBasicContent(
            text: '괜찮아요, 이대로 종료할게요',
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
