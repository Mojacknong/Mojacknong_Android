import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_page_profile_model.freezed.dart';
part 'my_page_profile_model.g.dart';

@freezed
class MyPageProfileModel with _$MyPageProfileModel {
  const factory MyPageProfileModel({
    required String? nickname,
    @FileConverter() File? image,
    required bool isInfoChangeComplete,

  }) = _MyPageProfileModel;

  factory MyPageProfileModel.fromJson(Map<String, dynamic> json) => _$MyPageProfileModelFromJson(json);
}

class FileConverter implements JsonConverter<File?, String?> {
  const FileConverter();

  @override
  File? fromJson(String? json) {
    if (json == null) return null;
    return File(json);
  }

  @override
  String? toJson(File? file) {
    return file?.path;
  }
}
