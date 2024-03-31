import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class MyPageFeedPicture extends StatelessWidget {
  final String? image;

  const MyPageFeedPicture({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: double.infinity,
        height: 248,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: FarmusThemeColor.background,
        ),
        child: _buildImage(),
      ),
    );
  }

  Widget _buildImage() {
    try {
      return image!.isEmpty
          ? Image.asset(
              "assets/image/img_diary1.png",
              fit: BoxFit.fill,
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  image!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 248,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else if (loadingProgress.cumulativeBytesLoaded ==
                        loadingProgress.expectedTotalBytes) {
                      return child;
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              FarmusThemeColor.brownButton),
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  (loadingProgress.expectedTotalBytes ?? 1)
                              : null,
                        ),
                      );
                    }
                  },
                ),
              ),
            );
    } catch (e) {
      return Image.asset(
        "assets/image/img_diary1.png",
        fit: BoxFit.fill,
      );
    }
  }
}
