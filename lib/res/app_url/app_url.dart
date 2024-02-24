import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppUrl {
  static late String appUrl;
  static late String loginUrl;

  static Future<void> initialize() async {
    await dotenv.load(fileName: 'lib/.env');
    appUrl = dotenv.env['APP_URL'] ?? '';
    loginUrl = dotenv.env['LOGIN_URL'] ?? '';
  }
}
