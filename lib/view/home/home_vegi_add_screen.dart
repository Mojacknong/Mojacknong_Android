import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class HomeVegiAddScreen extends ConsumerWidget {
  const HomeVegiAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PrimaryAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/image/ic_left.svg"),
        ),
      ),
      body: Container(),
    );
  }
}
