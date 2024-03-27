import 'package:flutter/cupertino.dart';

abstract class BaseDialog {
  Widget? get title;
  Widget? get content;
  List<Widget>? get actions;
}