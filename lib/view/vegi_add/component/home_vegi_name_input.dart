import 'package:farmus/common/primary_text_form_field.dart';
import 'package:farmus/view_model/home/home_vegi_add_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeVegiNameInput extends ConsumerWidget {
  const HomeVegiNameInput({
    super.key,
    this.maxLength,
    this.hintText,
  });

  final String? hintText;

  final int? maxLength;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.read(homeVegiInfoAddProvider).name;

    var nowLength = ref.watch(homeVegiInfoAddProvider).name.length;
    return PrimaryTextFormField(
        initialValue: name,
        maxLength: 8,
        minLines: 1,
        maxLines: 1,
        hintText: "쑥쑥이",
        onChanged: (value) {
          ref.read(homeVegiInfoAddProvider.notifier).updateNickname(value);
        },
      suffix: Text("$nowLength /8"),
    );
  }
}
