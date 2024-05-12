import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme/farmus_theme_color.dart';

class FarmusPictureFix extends ConsumerWidget {
  const FarmusPictureFix({super.key, required this.size, this.asset});

  final double size;
  final String? asset;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: size,
      height: size,
      decoration: ShapeDecoration(
        image: asset != null
            ? DecorationImage(
                image: AssetImage(asset!),
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
