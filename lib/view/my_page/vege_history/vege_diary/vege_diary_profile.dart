import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeDiaryProfile extends ConsumerWidget {
  const VegeDiaryProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vegeInfo = ref.watch(vegeInfoProvider).vegeInfo;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundColor: FarmusThemeColor.white,
            child: ClipOval(child: _vegeImage(vegeInfo.image)),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 6.0),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: '${vegeInfo.veggieName} ',
                        style: FarmusThemeTextStyle.darkSemiBold17,
                      ),
                      const TextSpan(
                        text: '| ',
                        style: TextStyle(
                            fontSize: 17, color: FarmusThemeColor.gray4),
                      ),
                      TextSpan(
                        text: vegeInfo.veggieType,
                        style: FarmusThemeTextStyle.darkMedium15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: '${vegeInfo.periodStart} ',
                        style: FarmusThemeTextStyle.gray2Medium15,
                      ),
                      const TextSpan(
                        text: '- ',
                        style: FarmusThemeTextStyle.gray2Medium15,
                      ),
                      TextSpan(
                        text: vegeInfo.periodEnd,
                        style: FarmusThemeTextStyle.gray2Medium15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _vegeImage(String imageUrl) {
    try {
      return imageUrl.isEmpty
          ? Image.asset(
              "assets/image/img_greenonion.png",
              fit: BoxFit.fill,
            )
          : Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: 100,
              height: 100,
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
            );
    } catch (e) {
      return Image.asset(
        "assets/image/img_sesame.png",
        fit: BoxFit.fill,
      );
    }
  }
}
