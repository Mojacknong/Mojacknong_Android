import 'dart:convert';
import 'dart:io';

import 'package:farmus/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class OnBoardingService {
  Future<http.Response> postUserProfile(File file, String nickname) async {
    const url = '/api/user/profile';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.postMultipart(
      url,
      nickname,
      file,
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to post profile');
    }
  }

  Future<http.Response> postMotivation(List<String> motivation) async {
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
      return response;
    } else {
      throw Exception('Failed to post motivation');
    }
  }

  Future<http.Response> postLevel(int time, String skill) async {
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
      return response;
    } else {
      throw Exception('Failed to post level');
    }
  }

  Future<http.Response> onBoardingComplete() async {
    const url = '/api/user/on-boarding/complete';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    ApiClient apiClient = ApiClient();

    final response = await apiClient.patch(url, headers: headers);

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to OnBoarding Complete');
    }
  }

  Future<http.Response> userInfo() async {
    const url = '/api/user';

    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to User Info');
    }
  }
}
