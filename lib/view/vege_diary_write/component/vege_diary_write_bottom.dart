import 'package:farmus/view/vege_diary_write/component/vege_diary_write_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryWriteBottom extends ConsumerWidget {
  const VegeDiaryWriteBottom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  '팜클럽 공개',
                  style: FarmusThemeTextStyle.gray1SemiBold17,
                ),
              ),
              VegeDiaryWriteSwitch(),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '팜클럽 멤버들이 일기를 읽을 수 있어요',
              style: FarmusThemeTextStyle.gray2Medium13,
            ),
          ),
          SizedBox(
            height: 24.0,
          )
        ],
      ),
    );
  }
}
