import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class FarmClubWidget extends StatelessWidget {
  final String? vegeImage;

  const FarmClubWidget({Key? key, this.vegeImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: FarmusThemeColor.gray4),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 60,
        width: 60,
      ),
    );
  }
}
