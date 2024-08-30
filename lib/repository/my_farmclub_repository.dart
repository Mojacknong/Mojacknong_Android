import 'dart:io';

import 'package:farmus/data/network/my_farmclub_service.dart';
import 'package:flutter/cupertino.dart';

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

  static Future<String> postMission(
      File file,
      String content,
      int farmClubId,
      BuildContext context
      ) async {
    String response = await MyFarmclubService()
        .myMissionComplete(file, content, farmClubId, context);
    return response;
  }
  static Future<String> getMissionSuccess(int farmClubId) async {
    String? response = await MyFarmclubService().myMissionSuccess(farmClubId);
    return response;
  }
}
