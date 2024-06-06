import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_veggie_info.freezed.dart';
part 'my_veggie_info.g.dart';

@freezed
class MyVeggieInfo with _$MyVeggieInfo {
  const factory MyVeggieInfo({
    required String nickname,
    required String image,
    required String veggieName,
    required String birthDay,
    required int period,
    required int myVeggieId,
  }) = _MyVeggieInfo;

  factory MyVeggieInfo.fromJson(Map<String, dynamic> json) =>
      _$MyVeggieInfoFromJson(json);
}
