import 'package:farmus/common/primary_text_form_field.dart';
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
    return PrimaryTextFormField(
      maxLength: maxLength,
      hintText: hintText,
    );
  }
}
