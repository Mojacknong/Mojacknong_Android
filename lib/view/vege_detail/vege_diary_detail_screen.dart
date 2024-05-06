import 'package:farmus/common/app_bar/more_vertical_app_bar.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/vege_detail/component/vege_diary_detail_content.dart';
import 'package:farmus/view/vege_detail/component/vege_diary_detail_icon.dart';
import 'package:farmus/view/vege_diary_write/vege_diary_write_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/bottom_sheet/primary_action_sheet.dart';
import '../../common/theme/farmus_theme_text_style.dart';
import 'component/vege_diary_detail_comment.dart';

class VegeDiaryDetailScreen extends ConsumerWidget {
  const VegeDiaryDetailScreen({super.key});

  void showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => PrimaryActionSheet(
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VegeDiaryWriteScreen()),
              );
            },
            child: const Text(
              "수정하기",
              style: FarmusThemeTextStyle.dark2Medium15,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "삭제하기",
              style: FarmusThemeTextStyle.redMedium15,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MoreVerticalAppBar(
        title: "2023년 11월 25일",
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            decoration: ShapeDecoration(
              color: FarmusThemeColor.blue1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(72),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '공개',
                  style: TextStyle(
                    color: FarmusThemeColor.blue2,
                    fontSize: 11,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              showActionSheet(context);
            },
            icon: SvgPicture.asset('assets/image/ic_more_vertical.svg'),
          ),
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VegeDiaryDetailContent(),
                    SizedBox(
                      height: 32,
                    ),
                    VegeDiaryDetailIcon(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(
                        height: 1,
                        color: FarmusThemeColor.gray4,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '댓글',
                          style: FarmusThemeTextStyle.gray1Medium15,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '2',
                          style: FarmusThemeTextStyle.gray1Medium15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    VegeDiaryDetailComment(),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12.0),
                      child: Divider(
                        height: 1,
                        color: FarmusThemeColor.gray4,
                      ),
                    ),
                    VegeDiaryDetailComment(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
