
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyVegiStep extends ConsumerWidget {
  const MyVegiStep({super.key,
    required this.color
  });

  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 27,
      height: 3,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2)),
      ),
    );
  }
}
