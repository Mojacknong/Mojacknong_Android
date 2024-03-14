import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/my_page/component/my_page_profile.dart';
import 'package:flutter/material.dart';

class MyPageProfileList extends StatefulWidget {
  final String? veggieName;
  final String? veggieType;
  final String? periodStart;
  final String? periodEnd;
  final String? image;

  const MyPageProfileList(
      {Key? key,
      required this.veggieName,
      required this.veggieType,
      required this.periodStart,
      required this.periodEnd,
      required this.image})
      : super(key: key);

  @override
  State<MyPageProfileList> createState() => _MyPageHistoryState();
}

class _MyPageHistoryState extends State<MyPageProfileList> {
  // void _navigateToNewPage(BuildContext context) {
  //   // `MaterialPageRoute`를 사용하여 새 페이지로 이동
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (context) => MyPageProfileList(data: widget.name), // 여기서 필요한 데이터를 전달
  //   ));
  // }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyPageProfile()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyPageProfile()),
                );
              },
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: Image.network(
                    widget.image ?? '',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12.0), // 이미지와 텍스트 사이의 간격
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 6.0),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${widget.veggieName} ',
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        const TextSpan(
                          text: '| ',
                          style: TextStyle(
                              fontSize: 17, color: FarmusThemeColor.gray4),
                        ),
                        TextSpan(
                          text: widget.veggieType,
                          style: const TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: '${widget.periodStart} ',
                          style: const TextStyle(
                              fontSize: 15, color: FarmusThemeColor.gray2),
                        ),
                        const TextSpan(
                          text: '- ',
                          style: TextStyle(
                              fontSize: 17, color: FarmusThemeColor.gray2),
                        ),
                        TextSpan(
                          text: widget.periodEnd,
                          style: const TextStyle(
                              fontSize: 15, color: FarmusThemeColor.gray2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
