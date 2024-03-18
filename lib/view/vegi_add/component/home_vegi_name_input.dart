import 'package:farmus/common/base/base_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeVegiNameInput extends ConsumerWidget implements BaseTextInput {
  const HomeVegiNameInput(
      {super.key, this.maxLength, this.hintText});

  @override
  final String? hintText;

  @override
  final int? maxLength;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      maxLength: maxLength,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
