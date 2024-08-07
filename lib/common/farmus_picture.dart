import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme/farmus_theme_color.dart';

class FarmusPicture extends ConsumerWidget {
  const FarmusPicture({super.key, required this.height, this.image});

  final double height;
  final String? image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: ShapeDecoration(
        image: image != null
            ? DecorationImage(
                image: NetworkImage(image!),
                fit: BoxFit.cover,
              )
            : null,
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
