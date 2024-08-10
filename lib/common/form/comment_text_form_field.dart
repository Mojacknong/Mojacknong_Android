import 'package:farmus/common/form/primary_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class CommentTextFormField extends ConsumerWidget {
  const CommentTextFormField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 16.0, left: 16.0, right: 16.0, bottom: 24.0),
      child: PrimaryTextFormField(
        initialValue: '',
        hintText: '댓글을 입력하세요',
        minLines: 1,
        maxLines: 1,
        onChanged: (value) {},
        suffix: GestureDetector(
          onTap: () {},
          child: SvgPicture.asset('assets/image/ic_send.svg'),
        ),
      ),
    );
  }
}
