import 'package:farmus/view_model/diary/diary_comment_delete_notifier.dart';
import 'package:farmus/view_model/diary/diary_delete_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_model/mission_write/notifier/mission_commemt_delete_notifier.dart';
import '../../view_model/mission_write/notifier/mission_delete_notifier.dart';
import '../button/primary_color_button.dart';
import '../button/white_color_button.dart';
import '../dialog/check_dialog.dart';
import '../theme/farmus_theme_text_style.dart';

class DeleteBottomSheetContent extends ConsumerWidget {
  const DeleteBottomSheetContent({
    super.key,
    required this.id,
    this.myVeggieId,
    required this.contentType,
    required this.categoryType,
  });

  final int id;
  final int? myVeggieId;
  final String contentType;
  final String categoryType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              '$contentType을 삭제하시겠어요?',
                              style: FarmusThemeTextStyle.gray1Medium15,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: WhiteColorButton(
                                  text: '취소',
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  enabled: true,
                                ),
                              ),
                              Expanded(
                                child: PrimaryColorButton(
                                  text: '삭제',
                                  onPressed: () {
                                    Navigator.pop(context);
                                    if (categoryType == 'diary') {
                                      switch (contentType) {
                                        case '댓글':
                                          ref
                                              .read(diaryCommentDeleteNotifierProvider
                                              .notifier)
                                              .diaryCommentDelete(id);
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              Future.delayed(
                                                  const Duration(seconds: 2), () {
                                                Navigator.of(context).pop();
                                              });
                                              return const CheckDialog(
                                                text: '댓글이 삭제 되었어요',
                                              );
                                            },
                                          );
                                          break;
                                        case '게시물':
                                          ref
                                              .read(diaryDeleteNotifierProvider
                                              .notifier)
                                              .diaryDelete(id, myVeggieId!);
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              Future.delayed(
                                                  const Duration(seconds: 2), () {
                                                Navigator.of(context).pop();
                                              });
                                              return const CheckDialog(
                                                text: '게시물이 삭제 되었어요',
                                              );
                                            },
                                          );
                                          break;
                                      }
                                    } else if (categoryType == 'mission') {
                                      switch (contentType) {
                                        case '댓글':
                                          ref
                                              .read(missionCommentDeleteNotifierProvider
                                              .notifier)
                                              .missionCommentDelete(id);
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              Future.delayed(
                                                  const Duration(seconds: 2), () {
                                                Navigator.of(context).pop();
                                              });
                                              return const CheckDialog(
                                                text: '댓글이 삭제 되었어요',
                                              );
                                            },
                                          );
                                          break;
                                        case '게시물':
                                          ref
                                              .read(missionDeleteNotifierProvider
                                              .notifier)
                                              .missionDelete(id);
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              Future.delayed(
                                                  const Duration(seconds: 2), () {
                                                Navigator.of(context).pop();
                                              });
                                              return const CheckDialog(
                                                text: '게시물이 삭제 되었어요',
                                              );
                                            },
                                          );
                                          break;
                                      }
                                    }
                                  },
                                  enabled: true,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
