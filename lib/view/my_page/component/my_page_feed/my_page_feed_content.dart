import 'package:expandable_text/expandable_text.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class MyPageFeedContent extends StatefulWidget {
  final String content;

  const MyPageFeedContent({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  _MyPageFeedContentState createState() => _MyPageFeedContentState();
}

class _MyPageFeedContentState extends State<MyPageFeedContent> {
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
              child: ExpandableText(
                widget.content,
                expandText: '더 보기',
                collapseText: '...닫기',
                maxLines: 2,
                style: FarmusThemeTextStyle.darkReqular14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
