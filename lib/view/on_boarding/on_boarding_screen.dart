import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mojacknong_android/common/farmus_theme_color.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/image/ic_close.svg")),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("1/4", style: TextStyle(color: FarmusThemeColor.green1),),
          )
        ],
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Divider(
            thickness: 1,
            color: FarmusThemeColor.grey4,
          )
        ],
      ),
    );
  }
}
