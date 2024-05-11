import 'package:farmus/common/switch/primary_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/routine/routine_provider.dart';

class VegeDiaryWriteBottom extends ConsumerWidget {
  const VegeDiaryWriteBottom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  '팜클럽 공개',
                  style: FarmusThemeTextStyle.gray1SemiBold17,
                ),
              ),
              PrimarySwitch(
                switchValue: ref.watch(routineCycleSwitchProvider),
                switchToggle: () {
                  ref.read(routineCycleSwitchProvider.notifier).toggle();
                },
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '팜클럽 멤버들이 일기를 읽을 수 있어요',
              style: FarmusThemeTextStyle.gray2Medium13,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}
