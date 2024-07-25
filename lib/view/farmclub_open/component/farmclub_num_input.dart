import 'package:farmus/common/form/digits_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../view_model/farmclub_open/notifier/farmclub_open_info_notifier.dart';

class FarmclubNumInput extends ConsumerWidget {
  const FarmclubNumInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmclubAddNotifier = ref.watch(farmclubOpenInfoNotifierProvider);
    final num = farmclubAddNotifier.value?.maxMemberCount.toString() ?? '';

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
      child: DigitsTextFormField(
        initialValue: num,
        onChanged: (numStr) {
          final numInt = int.tryParse(numStr);
          if (numInt != null) {
            ref.read(farmclubOpenInfoNotifierProvider.notifier).updateMaxMemberCount(numInt);
          }
        },
      ),
    );
  }
}
