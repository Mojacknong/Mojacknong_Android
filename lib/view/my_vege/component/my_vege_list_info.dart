import 'package:farmus/model/my_vege/my_vege_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/my_vege/my_vege_provider.dart';

class MyVegeListInfo extends ConsumerWidget {
  const MyVegeListInfo({super.key, required this.myVege});

  final MyVegeModel myVege;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myVegeDeleteMode = ref.watch(myVegeDeleteProvider);
    final myVegeNotifier = ref.read(myVegeProvider.notifier);

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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      myVege.vegeName,
                      style: FarmusThemeTextStyle.darkSemiBold17,
                    ),
                    const VerticalDivider(
                      width: 20,
                      thickness: 1,
                      color: FarmusThemeColor.gray4,
                    ),
                    Text(
                      myVege.vegeType,
                      style: FarmusThemeTextStyle.darkMedium15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "+${myVege.nowDay}일 ${myVege.startDay} -",
                style: FarmusThemeTextStyle.gray2Medium15,
              ),
            ],
          ),
        ),
        myVegeDeleteMode
            ? IconButton(
                onPressed: () {
                  myVegeNotifier.toggleSelect(myVege);
                },
                icon: SvgPicture.asset(
                  myVegeNotifier.isVegeSelected(myVege)
                      ? "assets/image/ic_check.svg"
                      : "assets/image/ic_check_empty.svg",
                ),
              )
            : Container(),
        const SizedBox(
          width: 16,
        )
      ],
    );
  }
}
