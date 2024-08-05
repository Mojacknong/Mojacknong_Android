import 'package:farmus/model/my_vege/my_veggie_info_model.dart';
import 'package:farmus/view_model/my_vege/notifier/my_veggie_delete_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/my_vege/my_vege_provider.dart';

class MyVegeListInfo extends ConsumerWidget {
  const MyVegeListInfo({super.key, required this.myVege});

  final MyVeggieInfoModel myVege;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myVegeDeleteMode = ref.watch(myVegeDeleteProvider);
    var myVeggieDeleteNotifier =
        ref.watch(myVeggieDeleteNotifierProvider.notifier);

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
            child: Image.network(myVege.image),
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
                      myVege.nickname,
                      style: FarmusThemeTextStyle.darkSemiBold17,
                    ),
                    const VerticalDivider(
                      width: 20,
                      thickness: 1,
                      color: FarmusThemeColor.gray4,
                    ),
                    Text(
                      myVege.veggieName,
                      style: FarmusThemeTextStyle.darkMedium15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "+${myVege.period}일 ${myVege.birthDay} -",
                style: FarmusThemeTextStyle.gray2Medium15,
              ),
            ],
          ),
        ),
        myVegeDeleteMode
            ? IconButton(
                onPressed: () {
                  myVeggieDeleteNotifier.toggleSelect(myVege);
                },
                icon: SvgPicture.asset(
                  myVeggieDeleteNotifier.isVegeSelected(myVege.myVeggieId)
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
