import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../main.dart';
import '../../res/app_url/app_url.dart';
import '../../view/sign_in/sign_in_screen.dart';

const storage = FlutterSecureStorage();

class AppInterceptor extends InterceptorsWrapper {
  Dio dio;

  AppInterceptor(this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await storage.read(key: 'accessToken');

    options.headers['Content-Type'] = 'application/json';
    options.headers['Authorization'] = 'Bearer $accessToken';

    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final refreshToken = await storage.read(key: 'refreshToken');
      if (refreshToken != null) {
        try {
          String newAccessToken = await _getNewAccessToken(refreshToken);
          err.requestOptions.headers['Authorization'] =
              'Bearer $newAccessToken';

          final response = await dio.fetch(err.requestOptions);
          handler.resolve(response);
        } catch (e) {
          await _handleTokenExpiry();
          handler.reject(err);
        }
      } else {
        await _handleTokenExpiry();
        handler.reject(err);
      }
    } else {
      handler.next(err);
    }
  }

  Future<String> _getNewAccessToken(String refreshToken) async {
    try {
      Response response = await dio.post(
        "${AppUrl.appUrl}/api/auth/reissue-token",
        options: Options(
          headers: {'Authorization': 'Bearer $refreshToken'},
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data['data'];
        String newAccessToken = data['accessToken'];
        String newRefreshToken = data['refreshToken'];

        await storage.write(key: 'accessToken', value: newAccessToken);
        await storage.write(key: 'refreshToken', value: newRefreshToken);

        return newAccessToken;
      } else {
        throw Exception('Failed to refresh token');
      }
    } catch (e) {
      throw Exception('Refresh token request failed');
    }
  }

  Future<void> _handleTokenExpiry() async {
    await storage.delete(key: 'accessToken');
    await storage.delete(key: 'refreshToken');
    await storage.delete(key: 'early');

    Navigator.pushAndRemoveUntil(
      navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => const SignInScreen()),
      (route) => false,
    );
  }
}
