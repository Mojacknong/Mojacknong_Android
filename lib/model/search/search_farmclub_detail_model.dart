import 'package:farmus/model/search/farmclub_help_info_model.dart';

class SearchFarmclubDetailModel {
  final int farmClubId;
  final String farmClubName;
  final String veggieName;
  final String veggieImage;
  final String farmClubDescription;
  final String startedAt;
  final int maxMemberCount;
  final int currentMemberCount;
  final FarmclubHelpInfoModel help;

  SearchFarmclubDetailModel({
    required this.farmClubId,
    required this.farmClubName,
    required this.veggieName,
    required this.veggieImage,
    required this.farmClubDescription,
    required this.startedAt,
    required this.maxMemberCount,
    required this.currentMemberCount,
    required this.help,
  });

  factory SearchFarmclubDetailModel.fromJson(Map<String, dynamic> json) {
    return SearchFarmclubDetailModel(
      farmClubId: json['farmClubId'],
      farmClubName: json['farmClubName'],
      veggieName: json['veggieName'],
      veggieImage: json['veggieImage'],
      farmClubDescription: json['farmClubDescription'],
      startedAt: json['startedAt'],
      maxMemberCount: json['maxMemberCount'],
      currentMemberCount: json['currentMemberCount'],
      help: FarmclubHelpInfoModel.fromJson(json['help']),
    );
  }
}
