import 'package:farmus/view/my_page/my_farmclub/component/farmclub_profile.dart';
import 'package:farmus/view_model/my_page/notifier/farmclub_profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final farmClubProvider = ChangeNotifierProvider<FarmClubInfoNotifier>((ref) {
  return FarmClubInfoNotifier();
});

class FarmClubList extends ConsumerWidget {
  const FarmClubList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: FarmClubProfile(),
          ),
        ],
      ),
    );
  }
}
