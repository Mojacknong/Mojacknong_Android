import 'package:farmus/view_model/diary/diary_comment_add_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/farmus_theme_color.dart';

class CommentTextFormField extends ConsumerWidget {
  const CommentTextFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 16.0, left: 16.0, right: 16.0, bottom: 24.0),
      child: TextFormField(
        initialValue: '',
        minLines: 1,
        maxLines: 1,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        onFieldSubmitted: (value) {},
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
          ref
              .read(diaryCommentAddNotifierProvider.notifier)
              .updateComment(value);
        },
      ),
    );
  }
}
