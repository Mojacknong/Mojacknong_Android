import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchFarmclubBackground extends StatelessWidget {
  const SearchFarmclubBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/image/ic_search_glass.svg',
          width: 62,
          height: 62,
          colorFilter:
              const ColorFilter.mode(FarmusThemeColor.gray4, BlendMode.srcIn),
        ),
        const SizedBox(height: 16),
        const Text('원하는 팜클럽을 검색해보세요',
            style: FarmusThemeTextStyle.gray1Medium17),
      ],
    );
  }
}
