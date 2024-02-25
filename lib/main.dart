import 'package:farmus_android/res/app_url/app_url.dart';
import 'package:farmus_android/view/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'lib/.env');
  await AppUrl.initialize();

  // Firebase 앱이 이미 초기화되었는지 확인하고, 초기화되지 않았을 경우에만 초기화합니다.
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      name: "팜어스",
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  KakaoSdk.init(
    nativeAppKey: dotenv.env['NATIVE_APP_KEY']!,
    javaScriptAppKey: dotenv.env['JAVA_SCRIPT_APP_KEY']!,
  );

  runApp(
    MaterialApp(
      title: "팜어스",
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
        // backgroundColor: FarmusThemeData.white,
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
