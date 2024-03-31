import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/my_page/vege_history_screen.dart';
import 'package:flutter/material.dart';

class MyVegeBox extends StatefulWidget {
  const MyVegeBox({super.key});

  @override
  State<MyVegeBox> createState() => _MyVegeBoxState();
}

class _MyVegeBoxState extends State<MyVegeBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const VegeHistoryScreen()),
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
