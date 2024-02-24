import 'package:farmus_android/res/app_url/app_url.dart';
import 'package:farmus_android/view/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_template.dart';

import 'common/farmus_theme_data.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'lib/.env');

  WidgetsFlutterBinding.ensureInitialized();
  await AppUrl.initialize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  KakaoSdk.init(
    nativeAppKey: dotenv.env['NATIVE_APP_KEY'],
    javaScriptAppKey: dotenv.env['JAVA_SCRIPT_APP_KEY'],
  );

  runApp(
    MaterialApp(
      title: "Farmus",
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Pretendard'),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        backgroundColor: FarmusThemeData.white,
      ),
    );
  }
}

Future<bool> fetchData() async {
  bool data = false;

  await Future.delayed(const Duration(seconds: 3), () {
    data = true;
  });

  return data;
}
