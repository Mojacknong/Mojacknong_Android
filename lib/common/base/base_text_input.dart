import 'package:flutter/material.dart';

abstract class BaseTextInput {
  int? get maxLength;

  int? get minLines;

  int? get maxLines;

  String? get hintText;

  String? get initialValue;

  String? get errorText;

  OutlineInputBorder? get errorBorder;

  TextStyle? get errorStyle;

  ValueChanged<String>? get onChanged;
}
