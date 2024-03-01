import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/image/ic_close.svg")),
        actions: const [Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("1/4"),
        )],
        centerTitle: true,
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
