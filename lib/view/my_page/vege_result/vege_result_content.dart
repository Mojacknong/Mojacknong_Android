import 'package:farmus/common/farmus_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

class VegeResultContent extends StatefulWidget {
  final String content;

  const VegeResultContent({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  _VegeResultContentState createState() => _VegeResultContentState();
}

class _VegeResultContentState extends State<VegeResultContent> {
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
                style: const TextStyle(
                  fontSize: 14,
                  color: FarmusThemeColor.dark,
                  fontFamily: "Pretendard",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
