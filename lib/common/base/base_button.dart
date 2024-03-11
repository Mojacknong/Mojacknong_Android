import 'dart:ui';

abstract class BaseButton {
  String get text;
  void Function()? get onPressed;
  bool get enabled;
  Color get textColor;
  Color get backgroundColor;
  Color get borderColor;
}