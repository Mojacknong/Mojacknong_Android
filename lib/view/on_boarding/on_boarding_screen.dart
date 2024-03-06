import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/on_boarding/on_boarding_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'on_boarding_app_bar.dart';


class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return const Scaffold(
      appBar: OnBoardingAppBar(),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Divider(
            thickness: 1,
            color: FarmusThemeColor.grey4,
          ),
          Expanded(
            child: OnBoardingFirst(),
          ),
        ],
      ),
    );
  }
}