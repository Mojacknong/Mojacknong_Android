import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../model/search/farmclub_help_info_model.dart';

class TipExpandCard extends ConsumerWidget {
  const TipExpandCard({super.key, required this.helpInfoModel});

  final FarmclubHelpInfoModel helpInfoModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: ShapeDecoration(
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              color: FarmusThemeColor.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '준비물',
                style: FarmusThemeTextStyle.gray2Medium13,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                helpInfoModel.material,
                style: FarmusThemeTextStyle.darkMedium15,
              ),
            ],
          ),
          children: [
            ListTile(
              leading: const SizedBox(
                width: 40,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '고르는 법',
                    style: FarmusThemeTextStyle.gray2Medium13,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        List.generate(helpInfoModel.selectHow.length, (index) {
                      return Text(
                        helpInfoModel.selectHow[index],
                        style: FarmusThemeTextStyle.darkMedium15,
                      );
                    }),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const SizedBox(
                width: 40,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '특징',
                    style: FarmusThemeTextStyle.gray2Medium13,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        List.generate(helpInfoModel.features.length, (index) {
                      return Text(
                        helpInfoModel.features[index],
                        style: FarmusThemeTextStyle.darkMedium15,
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
