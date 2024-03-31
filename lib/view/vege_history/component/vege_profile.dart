import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_page/component/my_vege_image_widget.dart';
import 'package:farmus/view/vege_history/vege_history_tap_screen.dart';
import 'package:farmus/view_model/my_page/vege_info_privider.dart';
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
          builder: (context) => const VegeHistoryTabScreen(),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const MyVegeImageWidget(),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 20.0),
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
          ],
        ),
      ),
    );
  }
}