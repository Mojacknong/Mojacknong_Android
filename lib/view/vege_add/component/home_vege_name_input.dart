import 'package:farmus/common/form/primary_text_form_field.dart';
import 'package:farmus/view_model/home/notifier/my_veggie_add_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeVegeNameInput extends ConsumerStatefulWidget {
  const HomeVegeNameInput({
    super.key,
    this.maxLength,
    this.hintText,
  });

  final String? hintText;
  final int? maxLength;

  @override
  _HomeVegeNameInputState createState() => _HomeVegeNameInputState();
}

class _HomeVegeNameInputState extends ConsumerState<HomeVegeNameInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.hintText ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final myVeggieAddNotifier =
      ref.watch(myVeggieAddNotifierProvider.notifier);

      return PrimaryTextFormField(
        controller: _controller,
        maxLength: widget.maxLength ?? 8,
        minLines: 1,
        maxLines: 1,
        hintText: widget.hintText ?? "쑥쑥이",
        onChanged: (value) {
          myVeggieAddNotifier.updateNickname(value);
        },
        suffix: Text("${_controller.text.length} /${widget.maxLength ?? 8}"),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}