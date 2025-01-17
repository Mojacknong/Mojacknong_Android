import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/mission/mission_write_model.dart';
import 'base_api_services.dart';

class MyFarmclubService {
  final ApiClient apiClient;

  MyFarmclubService({ApiClient? apiClient})
      : apiClient = apiClient ?? ApiClient();

  Future<String> myFarmclub() async {
    const url = '/api/farm-club/me';
    return _fetchData(url, '내 팜클럽 불러오기 실패');
  }

  Future<String> myFarmclubInfo(int farmclubId) async {
    final url = '/api/farm-club/me/$farmclubId';
    return _fetchData(url, '내 팜클럽 정보 불러오기 실패');
  }

  Future<String> farmclubHelp(int farmclubId) async {
    final url = '/api/farm-club/$farmclubId/help';
    return _fetchData(url, '내 팜클럽 도움말 불러오기 실패');
  }

  Future<String> farmclubMissionFeed(int farmclubId) async {
    final url = '/api/farm-club/$farmclubId/mission';
    return _fetchData(url, '팜클럽 미션 불러오기 실패');
  }

  Future<String> farmclubMissionCertification(
      MissionWriteModel mission, int farmclubId, int stepNum) async {
    const url = '/api/farm-club/mission';
    ApiClient apiClient = ApiClient();
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({
      'userFarmClubId': farmclubId,
      'content': mission.content,
      'stepNum': stepNum
    });
    final response = await apiClient.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 인증 실패');
    }
  }

  Future<String> _fetchData(String url, String errorMessage) async {
    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception(errorMessage);
    }
  }

  Future<String> myFarmclubDelete(int farmClubId) async {
    final url = '/api/farm-club/$farmClubId';

    final body = jsonEncode({
      'farmClubId': farmClubId,
    });

    final response = await apiClient.delete(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('팜클럽 탈퇴 실패');
    }
  }

  Future<String> myMissionComplete(
    File file,
    String content,
    int farmClubId,
    BuildContext context,
  ) async {
    const url = '/api/farm-club/mission';

    final jsonBody = {
      'requestDto': {
        "farmClubId": farmClubId,
        'content': content,
      }
    };

    final response = await apiClient.postMultipart(
      url,
      'requestDto',
      'image',
      jsonBody,
      file,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData =
          jsonDecode(utf8.decode(response.bodyBytes));

      return responseData['message'];
    } else {
      throw Exception('미션 완료 실패');
    }
  }

  Future<String> myMissionSuccess(int farmClubId) async {
    final url = '/api/farm-club/$farmClubId/success';

    final body = jsonEncode({
      'farmClubId': farmClubId,
    });
    ApiClient apiClient = ApiClient();
    final response = await apiClient.delete(url, body: body);

    if (response.statusCode == 200) {
      final responseBody = utf8.decode(response.bodyBytes);
      return responseBody;
    } else {
      throw Exception('팜클럽 성공 실패');
    }
  }



  Future<String> missionCommentAdd(int missionPostId, String content) async {
    const url = '/api/farm-club/mission/comment';

    final body = jsonEncode({
      'missionPostId': missionPostId,
      'content': content,
    });

    final response = await apiClient.post(url, body: body);

    if (response.statusCode == 200) {
      print(utf8.decode(response.bodyBytes));
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 댓글 추가 실패');
    }
  }

  Future<String> missionComment(int missionPostId) async {
    final url = '/api/farm-club/mission/$missionPostId';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 댓글 조회 실패');
    }
  }

  Future<String> missionLike(int missionPostId) async {
    final url = '/api/farm-club/mission/like/$missionPostId';

    final response = await apiClient.post(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 좋아요 실패');
    }
  }

  Future<String> missionLikeDelete(int missionPostId) async {
    final url = '/api/farm-club/mission/like/$missionPostId';

    final response = await apiClient.delete(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 좋아요 삭제 실패');
    }
  }

  Future<String> missionCommentDelete(int missionPostCommentId) async {
    final url = '/api/farm-club/mission/comment/$missionPostCommentId';

    final body = jsonEncode({
      'missionPostCommentId': missionPostCommentId,
    });

    final response = await apiClient.delete(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 댓글 삭제 실패');
    }
  }

  Future<String> missionDelete(int missionPostId) async {
    final url = '/api/farm-club/mission/$missionPostId';
    final body = jsonEncode({
      'missionPostId': missionPostId,
    });

    final response = await apiClient.delete(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 삭제 실패');
    }
  }

  Future<String> farmclubUserList(int farmClubId) async {
    final url = '/api/farm-club/$farmClubId/user';
    return _fetchData(url, '팜클럽 유저 불러오기 실패');
  }

  Future<String> missionReport(int missionPostId, String reason) async {
    const url = '/api/farm-club/report/mission';

    final body = jsonEncode({
      'missionPostId': missionPostId,
      'reason': reason,
    });

    final response = await apiClient.post(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 글 신고 실패');
    }
  }

  Future<String> missionCommentReport(int missionPostCommentId, String reason) async {
    const url = '/api/farm-club/report/comment';

    final body = jsonEncode({
      'missionPostCommentId': missionPostCommentId,
      'reason': reason,
    });

    final response = await apiClient.post(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('미션 댓글 신고 실패');
    }
  }
}
