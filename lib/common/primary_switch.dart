import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrimarySwitch extends ConsumerStatefulWidget {
  const PrimarySwitch({super.key});

  @override
  ConsumerState createState() => _VegeDiaryWriteSwitchState();
}

class _VegeDiaryWriteSwitchState extends ConsumerState<PrimarySwitch> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        useMaterial3: true,
      ).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(outline: FarmusThemeColor.gray3)),
      child: Switch(
          value: switchValue,
          activeColor: FarmusThemeColor.white,
          activeTrackColor: FarmusThemeColor.primary,
          inactiveThumbColor: FarmusThemeColor.white,
          inactiveTrackColor: FarmusThemeColor.gray3,
          onChanged: (bool? value) {
            setState(() {
              switchValue = value ?? false;
            });
          }),
    );
  }
}
