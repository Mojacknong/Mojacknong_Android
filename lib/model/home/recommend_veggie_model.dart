import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommend_veggie_model.freezed.dart';part 'recommend_veggie_model.g.dart';

@freezed
class RecommendVeggieModel with _$RecommendVeggieModel {
  factory RecommendVeggieModel(
      {required String image,
      required String name,
      required String difficulty,
      required String period}) = _RecommendVeggieModel;

  factory RecommendVeggieModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendVeggieModelFromJson(json);
}
