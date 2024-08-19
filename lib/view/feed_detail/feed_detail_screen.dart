import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/form/comment_text_form_field.dart';
import 'package:farmus/view/farmclub/component/feed_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/bottom_sheet/show_farmus_bottom_sheet.dart';
import '../../common/theme/farmus_theme_color.dart';
import '../../common/theme/farmus_theme_text_style.dart';
import '../../model/home/my_veggie_list_model.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/my_vege/notifier/my_veggie_list.dart';
import 'component/diary_comment.dart';
import 'component/feed_detail_content.dart';

class FeedDetailScreen extends ConsumerWidget {
  const FeedDetailScreen({
    super.key,
    required this.feedId,
    required this.nickname,
    this.profileImage,
    required this.writeDateTime,
    required this.content,
    required this.image,
    required this.commentCount,
    required this.likeCount,
    required this.myLike,
    this.state,
  });

  final int feedId;
  final String nickname;
  final String? profileImage;
  final String writeDateTime;
  final String content;
  final String image;
  final int commentCount;
  final int likeCount;
  final bool myLike;
  final String? state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedVeggieId = ref.watch(selectedVegeIdProvider);
    final AsyncValue<List<MyVeggieListModel>> veggieList =
        ref.watch(myVeggieListModelProvider);

    if (selectedVeggieId == null && veggieList.value?.isNotEmpty == true) {
      selectedVeggieId = veggieList.value!.first.myVeggieId;
    }

    return Scaffold(
      appBar: BackLeftTitleAppBar(
        actions: [
          IconButton(
            onPressed: () {
              showDeleteBottomSheet(
                context,
                feedId,
                selectedVeggieId,
                '게시물',
              );
            },
            icon: SvgPicture.asset('assets/image/ic_more_vertical.svg'),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeedProfile(
                      isDetail: false,
                      profileImage: profileImage,
                      nickname: nickname,
                      writeDateTime: writeDateTime,
                      myComment: false,
                      commentId: commentCount,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    FeedDetailContent(
                      content: content,
                      image: image,
                    ),
                    Visibility(
                      visible: state != null,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: FarmusThemeColor.gray4,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('채소 상태',
                                style: FarmusThemeTextStyle.gray2Medium13),
                            const SizedBox(width: 8),
                            Text('$state',
                                style: FarmusThemeTextStyle.gray6SemiBold13),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 64.0,
                    ),
                    DiaryComment(
                      diaryId: feedId,
                      commentCount: commentCount,
                      myLike: myLike,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: FarmusThemeColor.gray5,
            ),
            child: CommentTextFormField(
              feedId: feedId,
            ),
          ),
        ],
      ),
    );
  }
}
