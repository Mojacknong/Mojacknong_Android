import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_certification/my_certification_screen.dart';
import 'package:farmus/view/my_farmclub/component/farmclub_widget.dart';
import 'package:farmus/view_model/my_page/farmclub_provider.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const FarmClubWidget(),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 6.0),
                      RichText(
                        text: TextSpan(
                          children: <InlineSpan>[
                            TextSpan(
                              text: '${farmClubInfo.veggieName} ',
                              style: FarmusThemeTextStyle.darkSemiBold17,
                            ),
                            WidgetSpan(
                              child: Container(
                                height: 16,
                                width: 1,
                                color: FarmusThemeColor.gray4,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                              ),
                            ),
                            TextSpan(
                              text: farmClubInfo.veggieType,
                              style: FarmusThemeTextStyle.darkMedium15,
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
                              style: FarmusThemeTextStyle.gray2Medium15,
                            ),
                            const TextSpan(
                              text: '- ',
                              style: FarmusThemeTextStyle.gray2Medium15,
                            ),
                            TextSpan(
                              text: farmClubInfo.periodEnd,
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
            const SizedBox(
              height: 16.0,
            ),
            const Divider(
              height: 1,
              color: FarmusThemeColor.gray5,
            )
          ],
        ),
      ),
    );
  }
}
