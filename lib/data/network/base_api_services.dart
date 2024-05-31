import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../res/app_url/app_url.dart';

const storage = FlutterSecureStorage();

class ApiClient {
  Dio dio = Dio(BaseOptions(baseUrl: AppUrl.appUrl));

  ApiClient() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? accessToken = await storage.read(key: "accessToken");
        print(1);
        if (accessToken != null) {
          options.headers["Authorization"] = "Bearer $accessToken";
        }
        return handler.next(options);
      },
    ));
  }
}
