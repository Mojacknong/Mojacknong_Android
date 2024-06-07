import 'package:farmus/model/my_vege/my_veggie_diary.dart';
import 'package:farmus/view/vege_diary_detail/vege_diary_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/farmus_picture_fix.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryWidget extends StatelessWidget {
  final MyVeggieDiary diary;

  const VegeDiaryWidget({
    Key? key,
    required this.diary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const VegeDiaryDetailScreen(),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FarmusPictureFix(
                size: 64.0,
                image: diary.image,
              ),
              const SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      diary.date,
                      style: FarmusThemeTextStyle.darkMedium15,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        const Text(
                          '상태',
                          style: FarmusThemeTextStyle.gray2Medium15,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          diary.state,
                          style: FarmusThemeTextStyle.gray1Medium15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SvgPicture.asset(
                diary.isOpen
                    ? 'assets/image/ic_diary_open_true.svg'
                    : 'assets/image/ic_diary_open_false.svg',
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            diary.content,
            style: FarmusThemeTextStyle.darkMedium15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              height: 1,
              color: FarmusThemeColor.gray4,
            ),
          ),
        ],
      ),
    );
  }
}
