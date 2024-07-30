import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../sign_in/sign_in_screen.dart';

class FarmusLogoutBottomSheetContent extends StatelessWidget {
  const FarmusLogoutBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: const Text(
        "로그아웃 하시겠어요?",
        style: FarmusThemeTextStyle.dark2Medium15,
      ),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SignInScreen()),
            );
          },
          child: const Text(
            "로그아웃 하기",
            style: FarmusThemeTextStyle.redMedium15,
          ),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "취소",
            style: FarmusThemeTextStyle.dark2Medium15,
          ),
        ),
      ],
    );
  }
}
