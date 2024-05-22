import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FarmclubOnlyContainer extends StatelessWidget {
  const FarmclubOnlyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          color: FarmusThemeColor.background,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/image/ic_lock.svg"),
            const SizedBox(height: 8),
            const Text("팜클럽 멤버에게만 공개되어 있어요")
          ],
        ),
      ),
    );
  }
}
