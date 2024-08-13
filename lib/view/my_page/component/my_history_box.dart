import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class MyHistoryBox extends StatelessWidget {
  final Widget? destination;
  final String? text;
  final double? height;
  final Widget? child;

  const MyHistoryBox({
    Key? key,
    this.destination,
    this.text,
    this.height,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {
          if (destination != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => destination!,
              ),
            );
          }
        },
        child: Container(
          width: double.infinity,
          height: height ?? 180,
          decoration: ShapeDecoration(
            color: FarmusThemeColor.background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: Stack(
            children: [
              if (text != null)
                Positioned(
                  top: 55,
                  left: 16,
                  child: Text(
                    text!,
                    style: FarmusThemeTextStyle.gray1Medium13,
                  ),
                ),
              if (child != null)
                Positioned.fill(
                  child: child!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
