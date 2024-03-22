import 'package:farmus/view/home/component/home_none_vegi.dart';
import 'package:flutter/material.dart';

import '../../common/app_bar/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: HomeNoneVegi(),
        ),
      ),
    );
  }
}
