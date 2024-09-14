import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/bottom_sheet/show_farmus_bottom_sheet.dart';
import 'package:farmus/common/switch/primary_switch.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/my_setting/component/my_setting_text.dart';
import 'package:farmus/view/my_setting/component/my_setting_web.dart';
import 'package:farmus/view_model/my_setting/my_setting_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MySettingScreen extends ConsumerStatefulWidget {
  const MySettingScreen({super.key});

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
                        "https://thoughtful-chokeberry-dba.notion.site/FARMUS-5a883da34dd14ff594e952b470dd19f6?pvs=4"),
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
                        "https://thoughtful-chokeberry-dba.notion.site/FARMUS-b479368ce7e64145943e39d2162e7166?pvs=4"),
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
}
