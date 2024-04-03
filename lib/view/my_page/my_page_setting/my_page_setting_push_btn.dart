import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class MyPageSettingPushBtn extends StatefulWidget {
  const MyPageSettingPushBtn({super.key});

  @override
  _MyPageSettingPushBtnState createState() => _MyPageSettingPushBtnState();
}

class _MyPageSettingPushBtnState extends State<MyPageSettingPushBtn> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 48,
        height: 24,
        decoration: BoxDecoration(
          color: isPressed
              ? FarmusThemeColor.primary
              : FarmusThemeColor.background,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: isPressed ? 30 : 8,
              child: Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
