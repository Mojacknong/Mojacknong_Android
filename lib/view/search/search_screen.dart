import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/search/search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const SearchAppBar(),
      body: SingleChildScrollView(
          child: Container(
        width: 328,
        height: 130,
        padding: const EdgeInsets.all(16),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '파머 님을 위한\n추천 팜클럽',
              style: FarmusThemeTextStyle.darkSemiBold20,
            ),
            SizedBox(height: 8),
            Text(
              '홈파밍 초보도 도전할 수 있는 채소예요.',
              style: FarmusThemeTextStyle.gray2Medium15,
            ),
          ],
        ),
      )),
    );
  }
}
