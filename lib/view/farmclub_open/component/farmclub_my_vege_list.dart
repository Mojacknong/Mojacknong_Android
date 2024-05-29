import 'package:farmus/view/farmclub_open/component/farmclub_pick_vege_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubMyVegeList extends ConsumerWidget {
  const FarmclubMyVegeList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 34.0),
        child: Row(
          children: [
            FarmclubPickVegeButton(
              enabled: true,
              text: "상훈이",
              onPressed: () {},
            ),
            FarmclubPickVegeButton(
              enabled: true,
              text: "방울이",
              onPressed: () {},
            ),
            FarmclubPickVegeButton(
              enabled: true,
              text: "깨르륵",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
