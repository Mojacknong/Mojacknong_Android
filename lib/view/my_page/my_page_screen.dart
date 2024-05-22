import 'package:farmus/common/app_bar/farmus_logo_app_bar.dart';
import 'package:farmus/view/my_page/component/my_history.dart';
import 'package:farmus/view/my_page/component/my_page_info.dart';
import 'package:farmus/view/my_setting/my_setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FarmusLogoAppBar(
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/ic_settings.svg',
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MySettingScreen()),
              );
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 140,
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: MyPageInfo(image: ""),
              ),
            ),
            SizedBox(
              child: MyHistory(),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
