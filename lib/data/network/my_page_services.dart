import 'dart:convert';
import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';

class MyPageServices {
  Future<String> changeUserProfile(File file, String nickname) async {
    const url = '/api/user/profile';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.postMultipart(
      url,
      nickname,
      file,
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    print(utf8.decode(response.bodyBytes));

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
