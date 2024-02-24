import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../res/app_url/app_url.dart';

const storage = FlutterSecureStorage();

class AppInterceptor extends InterceptorsWrapper {
  Dio dio;

  AppInterceptor(this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await storage.read(key: 'accessToken');
    print("AppInterceptor: 액세스 토큰 : $accessToken");

    options.headers['Content-Type'] = 'application/json';
    options.headers['Authorization'] = 'Bearer $accessToken';

    handler.next(options);
  }

  @override
  void onError(err, ErrorInterceptorHandler handler) async {
    print("Error");
    if (err.response?.statusCode == 401) {
      print("401");
      String newAccessToken = await getRefreshToken("");
      err.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
      handler.next(err);
      return;
    } else {
      print(err.message);
    }
    throw err;
  }

  Future<String> getRefreshToken(token) async {
    try {
      final newToken = await storage.read(key: 'jwt');
      print("토큰 $newToken");

      Response response = await dio.get(
        "${AppUrl.loginUrl}/api/user/reissue-token",
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      print(response.data);
    } on DioException catch (e) {
      print(e.message);
    }
    return "response";
  }
}
