import 'package:flutter/material.dart';

class VegeDiaryContent extends StatefulWidget {
  final String content;

  const VegeDiaryContent({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  _VegeDiaryContentState createState() => _VegeDiaryContentState();
}

class _VegeDiaryContentState extends State<VegeDiaryContent> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
