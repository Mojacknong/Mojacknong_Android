import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_next_button.dart';
import 'package:farmus/view/on_boarding/on_boarding_first.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'on_boarding_app_bar.dart';

class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(onBoardingProvider);

    return Scaffold(
      appBar: const OnBoardingAppBar(),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          const Divider(
            thickness: 1,
            color: FarmusThemeColor.grey4,
          ),
          const Expanded(
            child: OnBoardingFirst(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: OnBoardingNextButton(
                text: "다음", onPressed: () {
                  print(profile.nickname);
            }, enabled: true),
          ),
        ],
      ),
    );
  }
}
