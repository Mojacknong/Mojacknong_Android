import 'package:farmus/view_model/diary/diary_comment_add_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../view_model/my_farmclub/mission_comment_add_notifier.dart';
import '../theme/farmus_theme_color.dart';

class CommentTextFormField extends ConsumerStatefulWidget {
  const CommentTextFormField({
    super.key,
    required this.feedId,
    required this.notifierType,

  });

  final int feedId;
  final String notifierType;

  @override
  _CommentTextFormFieldState createState() => _CommentTextFormFieldState();
}

class _CommentTextFormFieldState extends ConsumerState<CommentTextFormField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(
          top: 16.0, left: 16.0, right: 16.0, bottom: 24.0),
      child: TextFormField(
        controller: _controller,
        minLines: 1,
        maxLines: 1,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          filled: true,
          fillColor: FarmusThemeColor.white,
          hintText: '댓글을 입력하세요',
          hintStyle: const TextStyle(
            color: FarmusThemeColor.gray3,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
              final comment = _controller.text;

              if (comment.isNotEmpty) {
                if (widget.notifierType == "성장 일기") {
                  ref.read(diaryCommentAddNotifierProvider.notifier)
                      .addDiaryComment(widget.feedId);
                } else {
                  ref.read(missionCommentAddNotifierProvider.notifier)
                      .addMissionComment(widget.feedId);
                }
                _controller.clear();
              }
            },
            icon: SvgPicture.asset('assets/image/ic_send.svg'),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: FarmusThemeColor.gray4,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: FarmusThemeColor.gray4,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: FarmusThemeColor.gray4,
            ),
          ),
        ),
        onChanged: (value) {
          if (widget.notifierType == "성장 일기") {
            ref.read(diaryCommentAddNotifierProvider.notifier)
                .updateComment(value);
          } else {
            ref.read(missionCommentAddNotifierProvider.notifier)
                .updateComment(value);
          }
        },
      ),
    );
  }
}
