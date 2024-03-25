import 'package:farmus/common/farmus_theme_color.dart';
import 'package:farmus/res/app_url/app_url.dart';
import 'package:farmus/view/my_page/component/my_page_veges.dart';
import 'package:farmus/view/my_page/my_page_screen.dart';
import 'package:farmus/view/my_page/vege_history/component/vege_history_tap.dart';
import 'package:farmus/view/my_page/vege_history/vege_diary/vege_diary_screen.dart';
import 'package:farmus/view/my_page/vege_history/vege_history_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'lib/.env');
  await AppUrl.initialize();

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

  runApp(ProviderScope(
    child: MaterialApp(
      title: "팜어스",
      home: const MyPageScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Pretendard',
        scaffoldBackgroundColor: FarmusThemeColor.white,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: FarmusThemeColor.primary,
        ),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
