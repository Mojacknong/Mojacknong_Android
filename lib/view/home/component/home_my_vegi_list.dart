
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeMyVegiList extends StatelessWidget {
  const HomeMyVegiList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/image/ic_vegi_add.svg"),
          ),
        ],
      ),
    );
  }
}
