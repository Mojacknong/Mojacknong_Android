import 'package:farmus/view_model/diary/diary_comment_delete_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../button/primary_color_button.dart';
import '../button/white_color_button.dart';
import '../theme/farmus_theme_text_style.dart';

class DeleteBottomSheetContent extends ConsumerWidget {
  const DeleteBottomSheetContent(
      {super.key, required this.id, required this.type});

  final int id;
  final String type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                              '$type을 삭제하시겠어요?',
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
                                    ref
                                        .read(diaryCommentDeleteNotifierProvider
                                            .notifier)
                                        .diaryCommentDelete(id);
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
