import 'package:farmus/common/form/primary_text_form_field.dart';
import 'package:farmus/view_model/farmclub_open/farmclub_open_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    final name = ref.read(farmclubOpenInfoAddProvider).name;

    var nowLength = ref.watch(farmclubOpenInfoAddProvider).name.length;
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
              .read(farmclubOpenInfoAddProvider.notifier)
              .updateFarmclubName(value);
        },
        suffix: Text("$nowLength /8"),
      ),
    );
  }
}
