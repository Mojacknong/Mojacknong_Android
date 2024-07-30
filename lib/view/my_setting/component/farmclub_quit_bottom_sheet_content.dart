import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../sign_in/sign_in_screen.dart';

class FarmclubQuitBottomSheetContent extends StatelessWidget {
  const FarmclubQuitBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      message: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          "팜어스를 탈퇴하시겠어요?",
          style: FarmusThemeTextStyle.darkMedium15,
        ),
      ),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {},
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: SvgPicture.asset(
                    'assets/image/ic_alert_circle.svg',
                  ),
                ),
                const SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '지금까지의 홈파밍 기록이 모두 사라져요',
                      style: FarmusThemeTextStyle.redMedium15,
                    ),
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          text:
                          '\n\n채소/팜클럽 히스토리가 모두 사라져요\n\n미션/루틴을 체크할 수 없어요\n\n성장일기가 모두 사라져요\n',
                          style: FarmusThemeTextStyle.gray2Medium13,
                          children: [],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
      cancelButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoActionSheetAction(
            child: const Text(
              "취소",
              style: FarmusThemeTextStyle.darkMedium15,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 50,
            child: VerticalDivider(
              color: FarmusThemeColor.gray4,
            ),
          ),
          CupertinoActionSheetAction(
            child: const Text(
              "탈퇴하기",
              style: FarmusThemeTextStyle.darkMedium15,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}