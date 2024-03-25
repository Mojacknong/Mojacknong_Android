import 'package:farmus/model/home/my_vegi_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class MyVegiListInfo extends ConsumerWidget {
  const MyVegiListInfo({super.key, required this.myVegi});

 final MyVegiModel myVegi;

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          child: Container(
            width: 60,
            height: 60,
            decoration: ShapeDecoration(
              color: FarmusThemeColor.gray5,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 0.60,
                  color: FarmusThemeColor.gray4,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    myVegi.vegiName,
                    style: FarmusThemeTextStyle.darkSemiBold17,
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    color: FarmusThemeColor.gray4,
                  ),
                  Text(
                    myVegi.vegiType,
                    style: FarmusThemeTextStyle.darkMedium15,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "+${myVegi.nowDay}일 ${myVegi.startDay} -",
              style: FarmusThemeTextStyle.gray2Medium15,
            ),
          ],
        ),
      ],
    );
  }
}
