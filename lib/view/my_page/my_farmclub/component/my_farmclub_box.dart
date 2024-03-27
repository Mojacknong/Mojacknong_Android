import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/my_page/my_farmclub/my_farmclub_screen.dart';
import 'package:flutter/material.dart';

class MyFarmClubBox extends StatefulWidget {
  const MyFarmClubBox({super.key});

  @override
  State<MyFarmClubBox> createState() => _MyFarmClubBoxState();
}

class _MyFarmClubBoxState extends State<MyFarmClubBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FarmClubScreen()),
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
