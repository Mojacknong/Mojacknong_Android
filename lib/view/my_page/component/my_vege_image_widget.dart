import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class MyVegeImageWidget extends StatelessWidget {
  final String? vegeImage;

  const MyVegeImageWidget({Key? key, this.vegeImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 16.0,
      ),
      child: Container(
        width: 60,
        height: 60,
        decoration: ShapeDecoration(
          color: FarmusThemeColor.gray5,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 0.60,
              color: FarmusThemeColor.gray4,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
