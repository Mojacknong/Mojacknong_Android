import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/my_page/my_farmclub/component/farmclub_list.dart';
import 'package:farmus/view/my_page/my_farmclub/my_certification/my_certification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmClubProfile extends ConsumerWidget {
  const FarmClubProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmClubInfo = ref.watch(farmClubProvider).farmClubInfo;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MyCertificationScreen(),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _farmClubImage(farmClubInfo.image),
            const SizedBox(width: 15.0),
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
                          text: '${farmClubInfo.veggieName} ',
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        const TextSpan(
                          text: '| ',
                          style: TextStyle(
                              fontSize: 17, color: FarmusThemeColor.gray4),
                        ),
                        TextSpan(
                          text: farmClubInfo.veggieType,
                          style: const TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: '활동 기간 ${farmClubInfo.periodStart} ',
                          style: const TextStyle(
                              fontSize: 15, color: FarmusThemeColor.gray2),
                        ),
                        const TextSpan(
                          text: '- ',
                          style: TextStyle(
                              fontSize: 17, color: FarmusThemeColor.gray2),
                        ),
                        TextSpan(
                          text: farmClubInfo.periodEnd,
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

  Widget _farmClubImage(String imageUrl) {
    try {
      return imageUrl.isEmpty
          ? Image.asset(
              "assets/image/img_farmclub_lettuce.png",
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
