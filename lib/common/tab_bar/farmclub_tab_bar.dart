import 'package:farmus/common/tab_bar/primary_tab_bar.dart';
import 'package:flutter/material.dart';

class FarmclubTabBar extends StatelessWidget {
  const FarmclubTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const PrimaryTabBar(
      tab: ['현재', '이전', '다음'],
      tabView: [Text('data'), Text('data'), Text('data')],
    );
  }
}
