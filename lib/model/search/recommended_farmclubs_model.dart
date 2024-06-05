import 'package:farmus/model/search/search_farmclub_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_farmclubs_model.freezed.dart';
part 'recommended_farmclubs_model.g.dart';

@freezed
class RecommendedFarmclubsModel with _$RecommendedFarmclubsModel {
  factory RecommendedFarmclubsModel({
    required SearchFarmclubDetailModel recFirst,
    required SearchFarmclubDetailModel recSecond,
  }) = _RecommendedFarmclubsModel;

  factory RecommendedFarmclubsModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendedFarmclubsModelFromJson(json);
}
