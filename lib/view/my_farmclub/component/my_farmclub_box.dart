import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/my_farmclub/my_farmclub_screen.dart';
import 'package:flutter/material.dart';

class MyFarmClubBox extends StatelessWidget {
  const MyFarmClubBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyFarmclubScreen()),
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
