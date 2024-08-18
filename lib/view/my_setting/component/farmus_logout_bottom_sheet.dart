import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view_model/my_page/notifier/logout_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../sign_in/sign_in_screen.dart';

class FarmusLogoutBottomSheetContent extends ConsumerWidget {
  const FarmusLogoutBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoActionSheet(
      title: const Text(
        "로그아웃 하시겠어요?",
        style: FarmusThemeTextStyle.dark2Medium15,
      ),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () async {
            try {
              await ref.read(logoutNotifierProvider.notifier).logout();

              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignInScreen(),
                ),
                (route) => false,
              );
            } catch (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('로그아웃 실패: $error')),
              );
            }
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
