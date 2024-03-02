import 'package:flutter/cupertino.dart';

abstract class BaseAppBar {
  Widget? get leading;
  String? get title;
  List<Widget>? get actions;
}