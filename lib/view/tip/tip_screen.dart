import 'package:farmus/common/app_bar/delete_app_bar.dart';
import 'package:farmus/view/tip/component/tip_expand_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/theme/farmus_theme_text_style.dart';
import 'component/tip_step_text.dart';

class TipScreen extends ConsumerWidget {
  const TipScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const DeleteAppBar(
        title: '도움말',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Text(
                '대파 키우기',
                style: FarmusThemeTextStyle.darkSemiBold21,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TipExpandCard(),
            ),
            const SizedBox(
              height: 32.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TipStepText(
                    stepIndex: index + 1,
                    stepTitle: '대파를 심어요',
                    detailStep: const {1: '1번', 2: '2번', 3: '3번'},
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
