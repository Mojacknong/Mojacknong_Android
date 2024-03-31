import 'package:farmus/view/my_page/my_farmclub/component/farmclub_profile.dart';
import 'package:flutter/material.dart';

class FarmClubList extends StatelessWidget {
  const FarmClubList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FarmClubProfile(),
        FarmClubProfile(),
      ],
    );
  }
}
