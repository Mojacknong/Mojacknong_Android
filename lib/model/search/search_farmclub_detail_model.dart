import 'package:farmus/model/search/farmclub_help_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_farmclub_detail_model.freezed.dart';
part 'search_farmclub_detail_model.g.dart';

@freezed
class SearchFarmclubDetailModel with _$SearchFarmclubDetailModel {
  factory SearchFarmclubDetailModel({
    required int farmClubId,
    required String farmClubName,
    required String veggieName,
    required String veggieImage,
    required String farmClubDescription,
    required String startedAt,
    required int maxMemberCount,
    required int currentMemberCount,
    required FarmclubHelpInfoModel help,
  }) = _SearchFarmclubDetailModel;

  factory SearchFarmclubDetailModel.fromJson(Map<String, dynamic> json) =>
      _$SearchFarmclubDetailModelFromJson(json);
}
