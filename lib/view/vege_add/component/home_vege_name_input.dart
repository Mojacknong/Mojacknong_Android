import 'package:farmus/common/form/primary_text_form_field.dart';
import 'package:farmus/view_model/home/notifier/my_veggie_add_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeVegeNameInput extends ConsumerStatefulWidget {
  const HomeVegeNameInput({
    Key? key,
    this.maxLength,
    this.hintText,
  }) : super(key: key);

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
    final myVeggieAddNotifier = ref.read(myVeggieAddNotifierProvider).value;
    final name = widget.hintText ?? myVeggieAddNotifier?.name ?? '';
    _controller = TextEditingController(text: name);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryTextFormField(
      controller: _controller,
      maxLength: widget.maxLength ?? 8,
      minLines: 1,
      maxLines: 1,
      hintText: widget.hintText ?? "쑥쑥이",
      onChanged: (value) {
        ref.read(myVeggieAddNotifierProvider.notifier).updateNickname(value);
      },
      suffix: Text("${_controller.text.length} /${widget.maxLength ?? 8}"),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
