import 'package:farmus/common/form/content_input_text_form.dart';
import 'package:farmus/view_model/farmclub_open/farmclub_open_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubIntroInput extends ConsumerWidget {
  const FarmclubIntroInput({
    super.key,
    this.maxLength,
  });

  final int? maxLength;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final intro = ref.read(farmclubOpenInfoAddProvider).intro;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
      child: ContentInputTextForm(
        maxLength: 50,
        nowContent: intro,
        updateContent: (value) => ref
            .watch(farmclubOpenInfoAddProvider.notifier)
            .updateFarmclubIntro(value),
      ),
    );
  }
}
