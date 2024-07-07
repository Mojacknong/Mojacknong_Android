import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../mission_write_screen.dart';

class MissionWriteRouteButton extends ConsumerWidget {
  const MissionWriteRouteButton(
      {super.key, required this.step, required this.isButton});

  final StepModel step;
  final bool isButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: isButton,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (builder) => MissionWriteScreen(
                step: step,
              ),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          decoration: ShapeDecoration(
            color: FarmusThemeColor.gray6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Center(
            child: Text(
              '인증하기',
              style: FarmusThemeTextStyle.whiteSemiBold15,
            ),
          ),
        ),
      ),
    );
  }
}
