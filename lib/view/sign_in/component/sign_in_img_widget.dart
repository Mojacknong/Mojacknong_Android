import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class SignInImgWidget extends StatelessWidget {
  const SignInImgWidget({
    Key? key,
    required this.imgPath,
    required this.text,
    this.horizontalPadding = 16.0,
  }) : super(key: key);

  final String imgPath;
  final String text;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 150),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40),
              child: Text(
                text,
                style: FarmusThemeTextStyle.gray1SemiBold19,
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset(imgPath),
          ],
        ),
      ),
    );
  }
}
