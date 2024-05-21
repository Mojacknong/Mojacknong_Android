import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/button/home_my_vege_button.dart';

class FarmclubMyVegeList extends ConsumerWidget {
  const FarmclubMyVegeList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 34.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: HomeMyVegeButton(
                height: 31,
                fontSize: 13,
                enabled: true,
                text: "상훈이",
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: HomeMyVegeButton(
                height: 31,
                fontSize: 13,
                enabled: true,
                text: "방울이",
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: HomeMyVegeButton(
                height: 31,
                fontSize: 13,
                enabled: true,
                text: "깨르륵",
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
