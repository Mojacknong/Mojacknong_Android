import 'dart:convert';
import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';

class MyPageServices {
  Future<String> changeMyProfile(File file, String nickname) async {
    const url = '/api/user/profile';

    ApiClient apiClient = ApiClient();

    final jsonData = {
      'userNickname': {
        'nickname': nickname,
      }
    };


    final response = await apiClient.postMultipart(
        url,
        'userNickname',
        'image',
        jsonData,
        file
    );


    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to post profile');
    }
  }

  Future<String> myInfo() async {
    const url = '/api/user';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to User Info');
    }
  }

  Future<String> postNickname(String? nickname) async {
    const url = '/api/user/nickname';

    final body = jsonEncode({
      'nickname': nickname,
    });

    ApiClient apiClient = ApiClient();

    final response = await apiClient
        .patch(url, body: body, headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('닉네임 수정 실패: ${response.statusCode} ${response.body}');
    }
  }
}
