import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';

import '../../../view_model/my_page/my_page_info_provider.dart';

class SearchWelcomeText extends ConsumerWidget {
  const SearchWelcomeText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myPageInfoAsyncValue = ref.watch(myPageInfoModelProvider);

    return myPageInfoAsyncValue.when(
      data: (myPageInfo) {
        final nickName = myPageInfo.nickName;

        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$nickName님을 위한\n추천 팜클럽',
                style: FarmusThemeTextStyle.darkSemiBold20,
              ),
              const SizedBox(height: 8),
              const Text(
                '홈파밍 이유와 경험을 고려해 추천해드려요!',
                style: FarmusThemeTextStyle.gray2Medium15,
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => const Center(child: Text('Something went wrong')),
    );
  }
}
