import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_veggie_profile.freezed.dart';
part 'my_veggie_profile.g.dart';

@freezed
class MyVeggieProfile with _$MyVeggieProfile {
  const factory MyVeggieProfile({
    required String nickname,
    required String veggieName,
    required String veggieImage,
    required String createdVeggie,
    required int period,
    required int step,
    required int stepCount,
  }) = _MyVeggieProfile;

  factory MyVeggieProfile.fromJson(Map<String, dynamic> json) =>
      _$MyVeggieProfileFromJson(json);
}
