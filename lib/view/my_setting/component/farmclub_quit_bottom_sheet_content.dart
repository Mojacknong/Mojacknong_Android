import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/button/white_color_button.dart';
import '../../../view_model/my_page/notifier/user_delete_notifier.dart';
import '../../sign_in/sign_in_screen.dart';

class FarmclubQuitBottomSheetContent extends ConsumerWidget {
  const FarmclubQuitBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "팜어스를 탈퇴하시겠어요?",
                              style: FarmusThemeTextStyle.darkMedium15,
                            ),
                            Row(
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
                                          style: FarmusThemeTextStyle
                                              .gray2Medium13,
                                          children: [],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: WhiteColorButton(
                                    text: '취소',
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    enabled: true,
                                  ),
                                ),
                                Expanded(
                                  child: PrimaryColorButton(
                                    text: "탈퇴하기",
                                    onPressed: () {
                                      ref
                                          .read(userDeleteNotifierProvider
                                              .notifier)
                                          .userDelete();
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignInScreen()),
                                      );
                                    },
                                    enabled: true,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
