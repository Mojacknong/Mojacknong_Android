import 'package:farmus/common/button/round_gray_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/theme/farmus_theme_text_style.dart';

class HomeNoneContainer extends ConsumerWidget {
  const HomeNoneContainer(
      {super.key,
      required this.title,
      required this.onTap,
      required this.buttonText});

  final String title;
  final Function() onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 10.0),
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: FarmusThemeColor.background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            children: [
              Text(
                title,
                style: FarmusThemeTextStyle.gray2Medium15,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundGrayButton(
                onTap: onTap,
                isButton: true,
                text: buttonText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
