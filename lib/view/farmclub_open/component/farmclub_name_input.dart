import 'package:farmus/common/form/primary_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../view_model/farmclub_open/notifier/farmclub_open_info_notifier.dart';

class FarmclubNameInput extends ConsumerWidget {
  const FarmclubNameInput({
    super.key,
    this.maxLength,
    this.hintText,
  });

  final String? hintText;

  final int? maxLength;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Build called');
    final farmclubAddNotifier = ref.read(farmclubOpenInfoNotifierProvider).value;
    final name = farmclubAddNotifier?.farmClubName ?? '';
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
      child: PrimaryTextFormField(
        initialValue: name,
        maxLength: 8,
        minLines: 1,
        maxLines: 1,
        hintText: "파송송",
        onChanged: (value) {
          ref
              .read(farmclubOpenInfoNotifierProvider.notifier).updateFarmclubName(value);
        },
        suffix: Text("${name.length} /${maxLength ?? 8}"),
      ),
    );
  }
}
