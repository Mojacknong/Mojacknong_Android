import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme/farmus_theme_color.dart';

class FarmusPictureFix extends ConsumerWidget {
  const FarmusPictureFix({super.key,  this.size, this.heightSize, this.image});

  final double? size;
  final double? heightSize;
  final String? image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: size ?? double.infinity,
      height: heightSize ?? size,
      decoration: ShapeDecoration(
        image: image != null
            ? DecorationImage(
                image: NetworkImage(image!),
                fit: BoxFit.cover,
              )
            : null,
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
