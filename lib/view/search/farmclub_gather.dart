import 'package:farmus/view/search/farmclub_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubGather extends ConsumerWidget {
  const FarmclubGather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: <Widget>[
        FarmclubInfo(
          vege: "vege",
          level: "중급",
          period: "3",
          nickname: "대파",
          num: "3",
          total: "8",
        )
      ],
    );
  }
}
