import 'dart:convert';
import 'dart:io';

import 'base_api_services.dart';

class MyVeggieService {
  final ApiClient apiClient = ApiClient();

  Future<String> myVeggieList() async {
    const url = '/api/my-veggie/simple-list';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }

  Future<String> myVeggieAdd(
    String nickname,
    String birth,
    String veggieInfoId,
  ) async {
    const url = '/api/my-veggie';
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({
      'nickname': nickname,
      'birth': birth,
      'veggieInfoId': veggieInfoId,
    });

    final response = await apiClient.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to add my veggie');
    }
  }

  Future<String> myVeggieProfileList(int myVeggieId) async {
    final url = '/api/my-veggie/$myVeggieId/profile';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }

  Future<String> myVeggieDiaryOne(int myVeggieId) async {
    final url = '/api/my-veggie/diary/$myVeggieId/one';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }

  Future<String> myVeggieInfoList() async {
    const url = '/api/my-veggie/list';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to My Veggie List');
    }
  }

  Future<String> myVeggieDelete(int myVeggieId) async {
    const url = '/api/my-veggie';

    final body = jsonEncode({
      'myVeggieId': myVeggieId,
    });

    final response = await apiClient.delete(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('채소 삭제 실패');
    }
  }

  Future<String> myVeggieDiaryAll(int myVeggieId) async {
    final url = '/api/my-veggie/diary/$myVeggieId/all';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('채소의 모든 일기 조회 실패');
    }
  }

  Future<String> myVeggieDiaryAdd(
    File file,
    String content,
    bool isOpen,
    String state,
    int myVeggieId,
  ) async {
    const url = '/api/my-veggie/diary';

    final jsonBody = {
      'myVeggieDiaryInsert': {
        'content': content,
        'isOpen': isOpen,
        'state': state,
        'myVeggieId': myVeggieId,
      }
    };

    final response = await apiClient.postMultipart(
      url,
      'myVeggieDiaryInsert',
      'image',
      jsonBody,
      file,
    );

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('일기 추가 실패');
    }
  }

  Future<String> farmclubDiaryAll(int farmClubId) async {
    final url = '/api/my-veggie/diary/$farmClubId';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('팜클럽의 공개된 일기 조회 실패');
    }
  }

  Future<String> diaryComment(int diaryId) async {
    final url = '/api/my-veggie/diary/$diaryId/comment';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('일기 댓글 조회 실패');
    }
  }

  Future<String> diaryCommentAdd(int diaryId, String content) async {
    const url = '/api/my-veggie/diary/comment';

    final body = jsonEncode({
      'diaryId': diaryId,
      'content': content,
    });

    final response = await apiClient.post(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('일기 댓글 추가 실패');
    }
  }

  Future<String> diaryCommentDelete(int diaryCommentId) async {
    const url = '/api/my-veggie/diary/comment';

    final body = jsonEncode({
      'diaryCommentId': diaryCommentId,
    });

    final response = await apiClient.delete(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('일기 댓글 삭제 실패');
    }
  }

  Future<String> diaryLike(int diaryId) async {
    const url = '/api/my-veggie/diary/like';

    final body = jsonEncode({
      'diaryId': diaryId,
    });

    final response = await apiClient.post(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('일기 좋아요 실패');
    }
  }

  Future<String> diaryLikeDelete(int diaryId) async {
    const url = '/api/my-veggie/diary/like';

    final body = jsonEncode({
      'diaryId': diaryId,
    });

    final response = await apiClient.delete(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('일기 좋아요 삭제 실패');
    }
  }

  Future<String> diaryDelete(int diaryId, int myVeggieId) async {
    const url = '/api/my-veggie/diary';
    final body = jsonEncode({
      'diaryId': diaryId,
      'myVeggieId': myVeggieId,
    });

    final response = await apiClient.delete(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('일기 삭제 실패');
    }
  }

  Future<String> diaryCheck(int myVeggieId) async {
    final url = '/api/my-veggie/diary/$myVeggieId/check';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('일기 추가 여부 확인 실패');
    }
  }

  Future<String> motivationMessage() async {
    const url = '/api/user/on-boarding/encouragement-message';

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('응원말 조회 실패');
    }
  }

  Future<String> myVeggieSuccess(
    File file,
    String content,
    int myVeggieId,
  ) async {
    const url = '/api/my-veggie/success';

    final jsonBody = {
      'requestDto': {
        'content': content,
        'myVeggieId': myVeggieId,
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
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('채소 재배 성공 실패');
    }
  }

  Future<String> diaryCommentReport(int commentId, String reason) async {
    const url = '/api/my-veggie/diary/comment/report';

    final body = jsonEncode({
      'commentId': commentId,
      'reason': reason,
    });

    final response = await apiClient.post(url, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('일기 댓글 신고 실패');
    }
  }
}
