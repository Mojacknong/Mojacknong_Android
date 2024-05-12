import 'package:farmus/common/tab_bar/primary_tab_bar.dart';
import 'package:farmus/view/farmclub/component/farmclub_step.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FarmclubTabBar extends StatelessWidget {
  const FarmclubTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const PrimaryTabBar(
      tab: ['현재', '이전', '다음'],
      tabView: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: FarmclubStep(
                  stepImages: [
                    'assets/image/img_home_motivation.png',
                    'assets/image/img_home_motivation.png'
                  ],
                ),
              ),
              Text('data')
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: FarmclubStep(
                  stepImages: [
                    'assets/image/img_home_motivation.png',
                    'assets/image/img_home_motivation.png'
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: FarmclubStep(
                  stepImages: [],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: FarmclubStep(
                  stepImages: [],
                ),
              ),
            ],
          ),
        ),
        FarmclubStep(
          stepImages: [],
        )
      ],
    );
  }
}
