import 'package:farmus/model/diary/my_veggie_diary.dart';
import 'package:farmus/view/feed_detail/feed_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/farmus_picture_fix.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/my_page/my_page_info_provider.dart';

class VegeDiaryWidget extends ConsumerWidget {
  final MyVeggieDiary diary;

  const VegeDiaryWidget({
    super.key,
    required this.diary,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myInfo = ref.watch(myPageInfoModelProvider);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FeedDetailScreen(
              feedId: diary.diaryId,
              nickname: myInfo.value!.nickName,
              profileImage: myInfo.value!.userImageUrl,
              writeDateTime: diary.date,
              content: diary.content,
              image: diary.image,
              commentCount: diary.commentCount,
              likeCount: diary.likeCount,
              myLike: diary.myLike,
              state: diary.state,
              categoryType: 'diary',
              myPost: true,
            ),
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
