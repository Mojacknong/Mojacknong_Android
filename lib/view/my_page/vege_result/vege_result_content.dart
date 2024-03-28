import 'package:flutter/material.dart';

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
            ),
          ],
        ),
      ),
    );
  }
}
