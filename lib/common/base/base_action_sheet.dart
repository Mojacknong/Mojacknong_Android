import 'package:flutter/cupertino.dart';

abstract class BaseActionSheet {
  String? get title;
  List<Widget>? get actions;
  Widget? get cancelButton;
}