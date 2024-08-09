import 'dart:convert';
import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';

class MyPageServices {
  Future<String> changeMyProfile(File file, String nickname) async {
    const url = '/api/user/profile';

    ApiClient apiClient = ApiClient();
    if (!await file.exists()) {
      file = File("");
    }
    final response = await apiClient.postMultipart(
      url,
      nickname,
      file,
    );

    print('서비스 쪽 : ${utf8.decode(response.bodyBytes)}');

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
}
