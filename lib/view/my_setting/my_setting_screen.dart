import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/bottom_sheet/primary_action_sheet.dart';
import 'package:farmus/common/switch/primary_switch.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/login/login_screen.dart';
import 'package:farmus/view/my_setting/component/my_setting_text.dart';
import 'package:farmus/view/my_setting/component/my_setting_web.dart';
import 'package:farmus/view_model/my_setting/my_setting_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class MySettingScreen extends ConsumerStatefulWidget {
  const MySettingScreen({Key? key}) : super(key: key);

  @override
  _MySettingScreenState createState() => _MySettingScreenState();
}

class _MySettingScreenState extends ConsumerState<MySettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackLeftTitleAppBar(title: "설정"),
      backgroundColor: FarmusThemeColor.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MySettingText(text: "푸시알림"),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: PrimarySwitch(
                  switchValue: ref.watch(mySettingSwitchProvider),
                  switchToggle: () {
                    ref.read(mySettingSwitchProvider.notifier).toggle();
                  },
                ),
              ),
            ],
          ),
          const Divider(
            color: FarmusThemeColor.gray4,
            indent: 16,
            endIndent: 16,
          ),
          MySettingText(
            text: "개인정보 처리 방침",
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const MySettingWeb(
                    url:
                        "https://www.notion.so/FARMUS-5a883da34dd14ff594e952b470dd19f6?pvs=4"),
              ));
            },
          ),
          const Divider(
            color: FarmusThemeColor.gray4,
            indent: 16,
            endIndent: 16,
          ),
          MySettingText(
            text: "서비스 이용약관",
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const MySettingWeb(
                    url:
                        "https://www.notion.so/FARMUS-b479368ce7e64145943e39d2162e7166?pvs=4"),
              ));
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 9,
            decoration: BoxDecoration(
              color: FarmusThemeColor.background,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7),
                  spreadRadius: -4,
                  blurRadius: 2,
                  offset: const Offset(-4, -4),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          MySettingText(
            text: "로그아웃",
            onPress: () {
              showLogoutActionSheet(context);
            },
          ),
          const Divider(
            color: FarmusThemeColor.gray4,
            indent: 16,
            endIndent: 16,
          ),
          MySettingText(
            text: "탈퇴하기",
            onPress: () {
              showQuitActionSheet(context);
            },
          ),
          const Divider(
            color: FarmusThemeColor.gray4,
            indent: 16,
            endIndent: 16,
          ),
        ],
      ),
    );
  }

  void showLogoutActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => PrimaryActionSheet(
        title: "로그아웃 하시겠어요?",
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
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
      ),
    );
  }

  void showQuitActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => PrimaryActionSheet(
        message: "팜어스를 탈퇴하시겠어요?",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '지금까지의 홈파밍 기록이 모두 사라져요',
                        style: FarmusThemeTextStyle.redMedium15,
                      ),
                      Center(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    '\n\n채소/팜클럽 히스토리가 모두 사라져요\n\n미션/루틴을 체크할 수 없어요\n\n성장일기가 모두 사라져요\n',
                                style: FarmusThemeTextStyle.gray2Medium13,
                                children: [],
                              ),
                            ],
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
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
