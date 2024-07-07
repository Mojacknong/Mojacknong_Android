import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import 'mission_write_route_button.dart';

class MissionStepInfo extends ConsumerWidget {
  const MissionStepInfo(
      {super.key, required this.step, required this.isButton});

  final StepModel step;
  final bool isButton;

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Step ${step.stepNum + 1}',
                  style: FarmusThemeTextStyle.gray2SemiBold13,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  step.stepName,
                  style: FarmusThemeTextStyle.darkSemiBold15,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          MissionWriteRouteButton(step: step, isButton: isButton)
        ],
      ),
    );
  }
}
