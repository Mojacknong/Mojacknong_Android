import 'package:flutter/cupertino.dart';

abstract class BaseActionSheet {
  String? get title;
  String? get message;
  List<Widget>? get actions;
  Widget? get cancelButton;
}