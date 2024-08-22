import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FarmclubWidgetPic extends StatelessWidget {
  final String? imageUrl;
  final Color? backgroundColor;
  final double? size;

  const FarmclubWidgetPic({
    super.key,
    this.imageUrl,
    this.backgroundColor,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      height: size,
      width: size,
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
    );
  }
}
