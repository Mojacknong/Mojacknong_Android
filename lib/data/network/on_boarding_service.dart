import 'dart:convert';
import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';

class OnBoardingService {
  Future<String> postUserProfile(File file, String nickname) async {
    const url = '/api/user/profile';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.postMultipart(
      url,
      nickname,
      file,
    );

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to post profile');
    }
  }

  Future<String> postMotivation(List<String> motivation) async {
    const url = '/api/user/on-boarding/motivation';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({'motivation': motivation});
    ApiClient apiClient = ApiClient();

    final response = await apiClient.post(
      url,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to post motivation');
    }
  }

  Future<String> postLevel(int time, String skill) async {
    const url = '/api/user/on-boarding/level';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({'time': time, 'skill': skill});
    ApiClient apiClient = ApiClient();

    final response = await apiClient.post(
      url,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to post level');
    }
  }

  Future<String> onBoardingComplete() async {
    const url = '/api/user/on-boarding/complete';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    ApiClient apiClient = ApiClient();

    final response = await apiClient.patch(url, headers: headers);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to OnBoarding Complete');
    }
  }

  Future<String> userInfo() async {
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
