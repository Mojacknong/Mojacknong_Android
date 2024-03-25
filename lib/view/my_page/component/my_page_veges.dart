import 'package:flutter/material.dart';
import 'package:farmus/common/farmus_theme_color.dart';

class VegeImageWidget extends StatelessWidget {
  final String? vegeImage;

  const VegeImageWidget({Key? key, this.vegeImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: _buildImage(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    try {
      return vegeImage == null || vegeImage!.isEmpty
          ? Image.asset(
              "assets/image/img_greenonion.png",
              fit: BoxFit.fill,
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
                        valueColor: AlwaysStoppedAnimation<Color>(
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
        fit: BoxFit.fill,
      );
    }
  }
}
