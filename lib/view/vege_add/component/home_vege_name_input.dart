import 'package:farmus/common/form/primary_text_form_field.dart';
import 'package:farmus/view_model/home/notifier/my_veggie_add_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeVegeNameInput extends ConsumerWidget {
  const HomeVegeNameInput({
    super.key,
    this.maxLength,
    this.hintText,
  });

  final String? hintText;

  final int? maxLength;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.read(myVeggieAddNotifierProvider).value!.name;

    var nowLength = ref.watch(myVeggieAddNotifierProvider).value!.name.length;
    return PrimaryTextFormField(
      initialValue: name,
      maxLength: 8,
      minLines: 1,
      maxLines: 1,
      hintText: "쑥쑥이",
      onChanged: (value) {
        ref.read(myVeggieAddNotifierProvider.notifier).updateNickname(value);
      },
      suffix: Text("$nowLength /8"),
    );
  }
}
