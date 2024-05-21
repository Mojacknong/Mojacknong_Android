import 'package:farmus/common/form/primary_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DigitsTextFormField extends ConsumerWidget {
  const DigitsTextFormField(
      {super.key, required this.initialValue, this.readOnly, this.onChanged});

  final String initialValue;
  final bool? readOnly;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryTextFormField(
      initialValue: initialValue != '' ? initialValue : null,
      maxLength: 1,
      maxLines: 1,
      minLines: 1,
      onChanged: onChanged,
      readOnly: readOnly ?? false,
      suffix: const Text(''),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(1),
      ],
    );
  }
}
