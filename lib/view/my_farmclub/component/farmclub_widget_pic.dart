import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FarmclubWidgetPic extends StatelessWidget {
  final String? imageUrl;

  const FarmclubWidgetPic({Key? key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: FarmusThemeColor.gray2),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 60,
        width: 60,
        child: imageUrl != null
            ? (imageUrl!.endsWith('.svg')
                ? SvgPicture.network(
                    imageUrl!,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    imageUrl!,
                    fit: BoxFit.cover,
                  ))
            : null,
      ),
    );
  }
}
