import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/vege_history/vege_history_list_screen.dart';
import 'package:flutter/material.dart';

class MyHistoryBox extends StatelessWidget {
  const MyHistoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const VegeHistoryListScreen()),
          );
        },
        child: Container(
          width: double.infinity,
          height: 180,
          decoration: ShapeDecoration(
            color: FarmusThemeColor.background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
    );
  }
}
