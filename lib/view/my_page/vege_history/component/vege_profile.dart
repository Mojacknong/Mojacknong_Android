import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_list.dart';
import 'package:farmus/view/my_page/vege_history/vege_diary/vege_diary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegeProfile extends ConsumerWidget {
  const VegeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vegeInfo = ref.watch(vegeInfoProvider).vegeInfo;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const VegeDiaryScreen(),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
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
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        const TextSpan(
                          text: '| ',
                          style: TextStyle(
                              fontSize: 17, color: FarmusThemeColor.gray4),
                        ),
                        TextSpan(
                          text: vegeInfo.veggieType,
                          style: const TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${vegeInfo.periodStart} ',
                          style: const TextStyle(
                              fontSize: 15, color: FarmusThemeColor.gray2),
                        ),
                        const TextSpan(
                          text: '- ',
                          style: TextStyle(
                              fontSize: 17, color: FarmusThemeColor.gray2),
                        ),
                        TextSpan(
                          text: vegeInfo.periodEnd,
                          style: const TextStyle(
                              fontSize: 15, color: FarmusThemeColor.gray2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
                  // 이미지가 완전히 로드된 경우
                  return child;
                } else {
                  // 이미지 로딩 중
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