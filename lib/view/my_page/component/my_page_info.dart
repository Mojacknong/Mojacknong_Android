import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/my_page/component/my_page_profile.dart';
import 'package:flutter/material.dart';

class MyPageInfo extends StatelessWidget {
  final String? image;

  const MyPageInfo({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyPageProfile()),
              );
            },
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(child: _myImage()),
                  ),
                  const SizedBox(width: 15),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          "파머",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: FarmusThemeColor.dark),
                        ),
                      ),
                      Text(
                        "팜어스와 함께한지 +100일",
                        style: TextStyle(
                            fontSize: 15, color: FarmusThemeColor.gray1),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Divider(thickness: 1, color: Colors.grey),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _myImage() {
    try {
      return image!.isEmpty
          ? Image.asset(
              "assets/image/img_farmer.png",
              fit: BoxFit.fill,
            )
          : ClipOval(
              child: Image.network(
                image!,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
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
            );
    } catch (e) {
      return Image.asset(
        "assets/image/img_pepper.png",
        fit: BoxFit.fill,
      );
    }
  }
}
