import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_page_nickename_model.freezed.dart';
part 'my_page_nickename_model.g.dart';

@freezed
class MyPageNickenameModel with _$MyPageNickenameModel {
  const factory MyPageNickenameModel({
    required String nickname,
  }) = _MyPageNickenameModel;

  factory MyPageNickenameModel.fromJson(Map<String, dynamic> json) => _$MyPageNickenameModelFromJson(json);
}