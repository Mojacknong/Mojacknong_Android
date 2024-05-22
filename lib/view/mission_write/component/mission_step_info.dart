import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class MissionStepInfo extends ConsumerWidget {
  const MissionStepInfo({super.key, required this.stepNum});

  final int stepNum;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step $stepNum',
            style: FarmusThemeTextStyle.gray2SemiBold13,
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            '준비물을 챙겨요',
            style: FarmusThemeTextStyle.darkSemiBold15,
          ),
        ],
      ),
    );
  }
}
