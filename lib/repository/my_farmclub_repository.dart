import 'package:farmus/data/network/my_farmclub_service.dart';

import '../model/mission/mission_write_model.dart';

class MyFarmclubRepository {
  static Future<String> myFarmclub() async {
    String? response = await MyFarmclubService().myFarmclub();
    return response;
  }

  static Future<String> myFarmclubInfo(int farmclubId) async {
    String? response = await MyFarmclubService().myFarmclubInfo(farmclubId);
    return response;
  }

  static Future<String> farmclubHelp(int farmclubId) async {
    String? response = await MyFarmclubService().farmclubHelp(farmclubId);
    return response;
  }

  static Future<String> farmclubMission(int farmclubId) async {
    String? response =
        await MyFarmclubService().farmclubMissionFeed(farmclubId);
    return response;
  }

  static Future<String> farmclubMissionCertification(
      MissionWriteModel mission, int farmclubId, int stepNum) async {
    String? response = await MyFarmclubService()
        .farmclubMissionCertification(mission, farmclubId, stepNum);
    return response;
  }

  static Future<String> myFarmclubDelete(int farmClubId) async {
    String? response = await MyFarmclubService().myFarmclubDelete(farmClubId);
    return response;
  }
}
