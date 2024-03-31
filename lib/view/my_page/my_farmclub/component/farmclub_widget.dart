import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class FarmClubWidget extends StatelessWidget {
  final String? vegeImage;

  const FarmClubWidget({Key? key, this.vegeImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: FarmusThemeColor.gray4),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 60,
        // padding: const EdgeInsets.all(16),
        child: _buildImage(),
      ),
    );
  }

  Widget _buildImage() {
    try {
      return vegeImage == null || vegeImage!.isEmpty
          ? Image.asset(
              "assets/image/img_farmclub_lettuce.png",
              fit: BoxFit.cover,
            )
          : ClipOval(
              child: Image.network(
                vegeImage!,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
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
            );
    } catch (e) {
      return Image.asset(
        "assets/image/img_greenonion.png",
        fit: BoxFit.cover,
      );
    }
  }
}
