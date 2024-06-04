import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_veggie_add_model.freezed.dart';
part 'my_veggie_add_model.g.dart';

@freezed
class MyVeggieAddModel with _$MyVeggieAddModel {
  factory MyVeggieAddModel({
    required String id,
    required String name,
    required String difficulty,
    required String veggieImage,
    required String period,
  }) = _MyVeggieAddModel;

  factory MyVeggieAddModel.fromJson(Map<String, dynamic> json) =>
      _$MyVeggieAddModelFromJson(json);
}
