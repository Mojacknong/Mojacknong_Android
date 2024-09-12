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

  static Future<String> missionCommentAdd(int missionPostId, String content) async {
    String? response =
    await MyFarmclubService().missionCommentAdd(missionPostId, content);
    return response;
  }

  static Future<String> missionComment(int missionPostId) async {
    String? response = await MyFarmclubService().missionComment(missionPostId);
    return response;
  }

  static Future<String> missionLike(int missionPostId) async {
    String? response = await MyFarmclubService().missionLike(missionPostId);
    return response;
  }

  static Future<String> missionLikeDelete(int missionPostId) async {
    String? response = await MyFarmclubService().missionLikeDelete(missionPostId);
    return response;
  }

  static Future<String> getMissionSuccess(int farmClubId) async {
    String? response = await MyFarmclubService().myMissionSuccess(farmClubId);
    return response;
  }

static Future<String> missionCommentDelete(int missionPostCommentId) async {
    String? response =
    await MyFarmclubService().missionCommentDelete(missionPostCommentId);
    return response;
  }

  static Future<String> missionDelete(int missionPostId) async {
    String? response =
    await MyFarmclubService().missionDelete(missionPostId);
    return response;
  }
  
  static Future<String> farmclubUserList(int farmClubId) async {
    String? response = await MyFarmclubService().farmclubUserList(farmClubId);
    return response;
  }

  static Future<String> missionReport(int missionPostId, String reason) async {
    String? response = await MyFarmclubService().missionReport(missionPostId, reason);
    return response;
  }

  static Future<String> missionCommentReport(int missionPostCommentId, String reason) async {
    String? response = await MyFarmclubService().missionCommentReport(missionPostCommentId, reason);
    return response;
  }
}
