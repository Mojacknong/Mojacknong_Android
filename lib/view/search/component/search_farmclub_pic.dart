import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchFarmclubPic extends StatelessWidget {
  final String imageUrl;

  const SearchFarmclubPic({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('이미지파일: $imageUrl'); // Debug log

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: FarmusThemeColor.gray2),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 60,
        width: 60,
        child: SvgPicture.network(
          'https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg?sanitize=true', // 이미지 경로
          placeholderBuilder: (BuildContext context) =>
              const CircularProgressIndicator(), // 이미지 로딩 중에 보여줄 위젯
        ),
        // child: imageUrl.endsWith('.svg')
        //     ? SvgPicture.network(
        //         imageUrl,
        //         fit: BoxFit.fill,
        //         placeholderBuilder: (context) =>
        //             const Center(child: CircularProgressIndicator()),
        //       )
        //     : Image.network(
        //         imageUrl,
        //         fit: BoxFit.fill,
        //       ),
      ),
    );
  }
}
