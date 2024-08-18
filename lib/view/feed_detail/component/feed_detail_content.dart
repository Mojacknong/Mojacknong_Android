import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/farmus_picture.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class FeedDetailContent extends ConsumerWidget {
  const FeedDetailContent({super.key, required this.content, this.image});

  final String content;
  final String? image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FarmusPicture(
          height: 270,
          image: image,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            content,
            style: FarmusThemeTextStyle.darkMedium15,
          ),
        ),
      ],
    );
  }
}
