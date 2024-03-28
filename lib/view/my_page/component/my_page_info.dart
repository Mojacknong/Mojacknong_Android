import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_page/my_profile_screen.dart';
import 'package:flutter/material.dart';

class MyPageInfo extends StatelessWidget {
  final String? image;
  const MyPageInfo({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyProfileScreen()),
              );
            },
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Container(
                      width: 68,
                      height: 68,
                      decoration: ShapeDecoration(
                        color: FarmusThemeColor.gray5,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 0.60,
                            color: FarmusThemeColor.gray4,
                          ),
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "파머",
                          style: FarmusThemeTextStyle.darkSemiBold19,
                        ),
                      ),
                      Text(
                        "팜어스와 함께한지 +100일",
                        style: FarmusThemeTextStyle.gray1Medium15,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Divider(thickness: 1, color: Colors.grey),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
