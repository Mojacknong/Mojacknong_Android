import 'package:flutter/cupertino.dart';

abstract class BaseTabBar {
  List<String> get tab;
  List<Widget> get tabView;
  double? get tabViewHeights;
}
