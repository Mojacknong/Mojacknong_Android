import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_list.dart';
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
  void _navigateToNewPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const VegeHistoryList(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                _navigateToNewPage();
              },
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.transparent,
                child: ClipOval(child: _vegeImage()),
              ),
            ),
            const SizedBox(width: 12.0),
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

  Widget _vegeImage() {
    try {
      return widget.image!.isEmpty
          ? Image.asset(
              "assets/image/img_greenonion.png",
              fit: BoxFit.fill,
            )
          : CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.network(
                  widget.image!,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else if (loadingProgress.cumulativeBytesLoaded ==
                        loadingProgress.expectedTotalBytes) {
                      // 이미지가 완전히 로드된 경우
                      return child;
                    } else {
                      // 이미지 로딩 중
                      return Center(
                        child: CircularProgressIndicator(
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              FarmusThemeColor.brownButton),
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  (loadingProgress.expectedTotalBytes ?? 1)
                              : null,
                        ),
                      );
                    }
                  },
                ),
              ),
            );
    } catch (e) {
      return Image.asset(
        "assets/image/img_sesame.png",
        fit: BoxFit.fill,
      );
    }
  }
}
