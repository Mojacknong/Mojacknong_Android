import 'package:farmus/common/form/digits_text_form_field.dart';
import 'package:farmus/view_model/farmclub_open/farmclub_open_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubNumInput extends ConsumerWidget {
  const FarmclubNumInput({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final num = ref.read(farmclubOpenInfoAddProvider).maxMemberCount;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
      child: DigitsTextFormField(
        initialValue: '',
        onChanged: (value) {
          ref
              .read(farmclubOpenInfoAddProvider.notifier)
              .updateMaxMemberCount(value as int);
        },
      ),
    );
  }
}
