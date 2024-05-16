import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class TipStepText extends ConsumerWidget {
  final int stepIndex;
  final String stepTitle;
  final Map<int, String> detailStep;

  const TipStepText({
    Key? key,
    required this.stepIndex,
    required this.stepTitle,
    required this.detailStep,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Step $stepIndex',
              style: FarmusThemeTextStyle.gray2Medium17,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              stepTitle,
              style: FarmusThemeTextStyle.darkSemiBold17,
            )
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        for (final entry in detailStep.entries)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: FarmusThemeColor.gray2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${entry.key}',
                        style: FarmusThemeTextStyle.whiteMedium10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  entry.value,
                  style: FarmusThemeTextStyle.darkMedium15,
                ),
              ],
            ),
          ),
        const Divider(
          color: FarmusThemeColor.gray4,
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
