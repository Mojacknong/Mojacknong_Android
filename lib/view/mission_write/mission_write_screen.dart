import 'package:farmus/common/app_bar/delete_app_bar.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/mission_write/component/mission_step_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MissionWriteScreen extends ConsumerWidget {
  const MissionWriteScreen({super.key, required this.stepNum});

  final int stepNum;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: DeleteAppBar(
        title: '인증하기',
        actions: [
          PrimaryColorButton(
            text: '완료',
            onPressed: () {},
            enabled: false,
            borderRadius: 20,
            fontSize: 13,
            fontPadding: 0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MissionStepInfo(
                stepNum: stepNum,
              ),
            )
          ],
        ),
      ),
    );
  }
}
