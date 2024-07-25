import 'package:farmus/common/form/content_input_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../view_model/farmclub_open/notifier/farmclub_open_info_notifier.dart';

class FarmclubIntroInput extends ConsumerWidget {
  const FarmclubIntroInput({
    super.key,
    this.maxLength,
  });

  final int? maxLength;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmclubAddNotifier = ref.watch(farmclubOpenInfoNotifierProvider).value;
    final intro = farmclubAddNotifier?.farmClubDescription ?? '';

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
      child: ContentInputTextForm(
        maxLength: 50,
        nowContent: intro,
        updateContent: (value) => ref
            .watch(farmclubOpenInfoNotifierProvider.notifier)
            .updateFarmclubDescription(value!),
      ),
    );
  }
}
