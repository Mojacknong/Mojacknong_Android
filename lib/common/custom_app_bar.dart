import 'package:flutter/material.dart';

import 'farmus_theme_data.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        elevation: 0,
        leading: const BackButton(
          color: FarmusThemeData.black,
        ),
        backgroundColor: FarmusThemeData.white,
      ),
    );
  }
}
