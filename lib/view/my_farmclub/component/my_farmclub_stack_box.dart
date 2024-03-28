import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_farmclub/component/farmclub_widget.dart';
import 'package:farmus/view/my_farmclub/component/my_farmclub_box.dart';
import 'package:farmus/view_model/my_page/farmclub_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class MyFarmClubStackBox extends ConsumerWidget {
  final String historyType;
  final Image? image;
  final String message;
  final String? imagePath = "assets/image/ic_farm_club_mark.svg";
  final String? vegeImage;

  const MyFarmClubStackBox({
    Key? key,
    required this.historyType,
    this.image,
    this.vegeImage,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmClubCount = ref.watch(farmClubCountProvider);

    return Stack(
      children: [
        const MyFarmClubBox(),
        Padding(
          padding: const EdgeInsets.only(left: 32, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (image != null) ...[
                    SvgPicture.asset(
                      imagePath!,
                      height: 22,
                    ),
                    const SizedBox(width: 8),
                  ],
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: historyType,
                            style: FarmusThemeTextStyle.darkSemiBold17),
                        TextSpan(
                            text: ' ${farmClubCount.toString()}',
                            style: FarmusThemeTextStyle.gray2SemiBold17),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: ' ${farmClubCount.toString()} ',
                        style: FarmusThemeTextStyle.green1SemiBold13),
                    TextSpan(
                        text: message,
                        style: FarmusThemeTextStyle.gray1SemiBold13),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          child: Padding(
            padding: EdgeInsets.only(top: 105.0, left: 24),
            child: Row(
              children: [FarmClubWidget(), FarmClubWidget(), FarmClubWidget()],
            ),
          ),
        ),
      ],
    );
  }
}
