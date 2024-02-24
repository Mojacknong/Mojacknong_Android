import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mojacknong_android/model/farmus_user.dart';
import 'package:mojacknong_android/res/app_url/app_url.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();

Dio dio = Dio(
  BaseOptions(
    baseUrl: AppUrl.appUrl,
  ),
);

Dio authDio = Dio(
  BaseOptions(
    baseUrl: AppUrl.appUrl,
  ),
);

class LoginApiServices {
  Future<FarmusUser> fetchKaKaoData(token) async {
    try {
      Response response = await dio.post(
        '/api/user/auth/kakao-login',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      FarmusUser user = FarmusUser.fromJson(response.data["data"]);
      print(user.accessToken);
      await storage.write(key: "refreshToken", value: user.refreshToken);
      await storage.write(key: 'accessToken', value: user.accessToken);


      return user;
    } on DioException catch (e) {
      print(e.message);
      print("실패");
      return FarmusUser(
        nickName: "",
        refreshToken: "",
        accessToken: "",
      );
    }
  }

  Future<FarmusUser> getGoogleLogin(token) async {
    try {
      Response response = await dio.post(
        '/api/user/auth/google-login',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      print(response.data);

      FarmusUser user = FarmusUser.fromJson(response.data["data"]);
      await storage.write(key: 'refreshToken', value: user.refreshToken);
      await storage.write(key: 'accessToken', value: user.accessToken);

      final accessGoogleToken = await storage.read(key: 'accessToken');
      final refreshGoogleToken = await storage.read(key: 'refreshToken');
      print("성공 \n액세스 : $accessGoogleToken \n리프레시 : $refreshGoogleToken");

      return user;
    } on DioException catch (e) {
      print(e.message);
      print("실패");
      return FarmusUser(
        nickName: "",
        refreshToken: "",
        accessToken: "",
      );
    }
  }

  Future<FarmusUser> reissue() async {
    try {
      final token = await storage.read(key: 'refreshToken');
      print("토큰 $token");

      Response response = await dio.get(
        '/api/user/reissue-token',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      print(response.data);
      print("reissue 성공");

      FarmusUser user = FarmusUser.fromJson(response.data["data"]);
      await storage.write(key: "accessToken", value: user.accessToken);
      final newAccessToken = await storage.read(key: 'accessToken');
      print("새 액세스 토큰 : $newAccessToken");

      return user;
    } on DioError catch (e) {
      print(e.message);
      print(e.response);
      print("reissue 실패");

      return FarmusUser(
        nickName: "",
        refreshToken: "",
        accessToken: "",
      );
    }
  }

  Future<FarmusUser> logout() async {
    try {
      final accessToken = await storage.read(key: 'accessToken');

      if (accessToken != null) {
        Response response = await authDio.delete(
          '/api/user/logout',
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
        );

        if (response.statusCode == 200) {
          await storage.delete(key: "accessToken");
          await storage.delete(key: "refreshToken");
          print("로그아웃 성공");

          return FarmusUser(
            nickName: "",
            refreshToken: "",
            accessToken: "",
          );
        } else {
          print("로그아웃 실패 ${response.statusCode}");
          return FarmusUser(
            nickName: "",
            refreshToken: "",
            accessToken: "",
          );
        }
      } else {
        print("로그아웃 실패 : 액세스 토큰 없음");
        return FarmusUser(
          nickName: "",
          refreshToken: "",
          accessToken: "",
        );
      }
    } on DioError catch (e) {
      print("로그아웃 실패 : ${e.message}");
      if (e.response != null) {
        print("응답 : ${e.response}");
      }
      return FarmusUser(
        nickName: "",
        refreshToken: "",
        accessToken: "",
      );
    }
  }
}
