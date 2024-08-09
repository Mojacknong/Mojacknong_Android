import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/my_page/component/my_page_profile.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyProfileScreen extends ConsumerWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const Scaffold(
        appBar: BackLeftTitleAppBar(
          title: "프로필",
        ),
        resizeToAvoidBottomInset: true,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: MyPageProfile(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
