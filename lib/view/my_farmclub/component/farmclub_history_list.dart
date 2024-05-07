import 'package:farmus/view/my_farmclub/component/farmclub_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubHistoryList extends ConsumerWidget {
  const FarmclubHistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          FarmclubProfile(),
          FarmclubProfile(),
          FarmclubProfile(),
          FarmclubProfile(),
          FarmclubProfile(),
          FarmclubProfile(),
          FarmclubProfile(),
          FarmclubProfile(),
          FarmclubProfile(),
          FarmclubProfile(),
        ],
      ),
    );
  }
}
