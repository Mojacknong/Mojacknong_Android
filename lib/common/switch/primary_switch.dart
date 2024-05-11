import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrimarySwitch extends ConsumerStatefulWidget {
  final bool switchValue;
  final void Function() switchToggle;

  const PrimarySwitch(
      {super.key, required this.switchValue, required this.switchToggle});

  @override
  ConsumerState createState() => _PrimarySwitchState();
}

class _PrimarySwitchState extends ConsumerState<PrimarySwitch> {
  @override
  Widget build(BuildContext context) {
    bool? initSwitch = widget.switchValue;

    return Theme(
      data: ThemeData(
        useMaterial3: true,
      ).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(outline: FarmusThemeColor.gray3)),
      child: Switch(
          value: initSwitch,
          activeColor: FarmusThemeColor.white,
          activeTrackColor: FarmusThemeColor.primary,
          inactiveThumbColor: FarmusThemeColor.white,
          inactiveTrackColor: FarmusThemeColor.gray3,
          onChanged: (bool? value) {
            setState(() {
              widget.switchToggle();
              initSwitch = value;
            });
          }),
    );
  }
}
