import 'package:farmus/common/app_bar/page_index_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/theme/farmus_theme_color.dart';

class VegiDeleteScreen extends ConsumerWidget {
  const VegiDeleteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: PageIndexAppBar(
        currentIndex: '1',
        maxIndex: '2',
      ),
      body: Divider(
        thickness: 1,
        color: FarmusThemeColor.gray4,
      ),
    );
  }
}
