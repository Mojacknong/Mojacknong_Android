import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_page_info_model.freezed.dart';
part 'my_page_info_model.g.dart';

@freezed
class MyPageInfoModel with _$MyPageInfoModel {
  const factory MyPageInfoModel({
    required String nickName,
    required String userImageUrl,
    required int dday,
  }) = _MyPageInfoModel;

  factory MyPageInfoModel.fromJson(Map<String, dynamic> json) => _$MyPageInfoModelFromJson(json);
}
