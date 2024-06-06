import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchFarmclubBackground extends StatelessWidget {
  final String imageUrl;
  final String text;
  const SearchFarmclubBackground(
      {super.key, required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imageUrl,
            width: 62,
            height: 62,
            colorFilter:
                const ColorFilter.mode(FarmusThemeColor.gray4, BlendMode.srcIn),
          ),
          const SizedBox(height: 16),
          Text(text, style: FarmusThemeTextStyle.gray1Medium17),
        ],
      ),
    );
  }
}
