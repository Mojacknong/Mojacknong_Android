import 'package:flutter/material.dart';

class AboutFarmclubWidget extends StatelessWidget {
  const AboutFarmclubWidget({
    Key? key,
    required this.dialogs,
    this.messageSpans,
  }) : super(key: key);

  final List<Widget> dialogs;
  final List<TextSpan>? messageSpans;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...dialogs,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(children: messageSpans),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
