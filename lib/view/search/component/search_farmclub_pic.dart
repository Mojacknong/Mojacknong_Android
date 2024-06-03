import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class SearchFarmclubPic extends StatelessWidget {
  final String imageUrl;

  const SearchFarmclubPic({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('이미지파일: $imageUrl');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
          decoration: BoxDecoration(
            color: FarmusThemeColor.gray5,
            border: Border.all(width: 2, color: FarmusThemeColor.gray5),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 60,
          width: 60,
          child: Image.network(
            imageUrl,
            fit: BoxFit.fill,
          )),
    );
  }
}
