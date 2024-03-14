import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/my_page/component/my_page_profile.dart';
import 'package:flutter/material.dart';

class MyPageInfo extends StatelessWidget {
  const MyPageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyPageProfile()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/image/img_farmer.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "파머",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: FarmusThemeColor.dark),
                      ),
                    ),
                    Text(
                      "팜어스와 함께한지 +100일",
                      style: TextStyle(
                          fontSize: 15, color: FarmusThemeColor.gray1),
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(thickness: 1, color: Colors.grey),
        ],
      ),
    );
  }
}
