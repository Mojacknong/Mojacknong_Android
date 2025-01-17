import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/home/motivation_message_model.dart';
import '../../../view_model/home/notifier/motivation_message_notifier.dart';

class HomeMotivation extends ConsumerWidget {
  final String motivation;

  const HomeMotivation({
    super.key,
    required this.motivation,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<MotivationMessageModel> motivation =
        ref.watch(motivationMessageProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: motivation.when(
        data: (data) {
          return Column(
            children: [
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                decoration: ShapeDecoration(
                  color: FarmusThemeColor.greenLight4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        data.encouragementMessage,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: FarmusThemeTextStyle.darkMedium13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text('Error: $error'),
      ),
    );
  }
}
