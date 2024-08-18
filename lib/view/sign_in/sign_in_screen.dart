import 'dart:async';

import 'package:farmus/repository/user_repository.dart';
import 'package:farmus/view/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../common/base/bouncing.dart';
import '../../model/farmus_user.dart';
import '../on_boarding/on_boarding_screen.dart';
import 'component/sign_in_img_widget.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late FarmusUser user;
  final PageController _pageController = PageController();
  final List<String> _pageContents = [
    'Page 1',
    'Page 2',
    'Page 3',
    'Page 4',
    'Page 5'
  ];
  int _currentPage = 0;

  _asyncMethod() async {
    final accessToken = await storage.read(key: "accessToken");

    if (accessToken != null) {
      if (!mounted) return;

      final early = await storage.read(key: "early");
      if (early != "true") {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          ),
          (route) => false,
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
    // _asyncMethod();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < _pageContents.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pageContents.length,
            onPageChanged: (int page) {
              setState(() {});
            },
            itemBuilder: (context, index) {
              return getPageContent(index);
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 120,
            child: Bouncing(
              onPress: () {},
              child: GestureDetector(
                onTap: () {
                  kakaoLogin();
                },
                child: SvgPicture.asset(
                  "assets/image/login_kakao.svg",
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: Bouncing(
              onPress: () {},
              child: GestureDetector(
                onTap: () {
                  googleLogin();
                },
                child: SvgPicture.asset(
                  "assets/image/login_google.svg",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getPageContent(int index) {
    switch (index) {
      case 0:
        return const SignInImgWidget(
          text: "나에게 맞는 팜클럽을 가입해요",
          imgPath: "assets/image/img_login_first.png",
        );
      case 1:
        return const SignInImgWidget(
          horizontalPadding: 58,
          text: "주기별 미션을 인증하고",
          imgPath: "assets/image/img_login_second.png",
        );
      case 2:
        return const SignInImgWidget(
          horizontalPadding: 58,
          text: "주기별 미션을 인증하고",
          imgPath: "assets/image/img_login_third.png",
        );
      case 3:
        return const SignInImgWidget(
          horizontalPadding: 58,
          text: "주기별 미션을 인증하고",
          imgPath: "assets/image/img_login_fourth.png",
        );
      case 4:
        return const SignInImgWidget(
          text: "수확의 기쁨을 함께 나누어요",
          imgPath: "assets/image/img_login_fifth.png",
        );
      default:
        return Container();
    }
  }

  kakaoLogin() async {
    bool isInstalled = await isKakaoTalkInstalled();
    OAuthToken? token;

    if (isInstalled) {
      try {
        token = await UserApi.instance.loginWithKakaoTalk();
        fetchKaKaoData(token.accessToken);
      } catch (error) {
        if (error is PlatformException && error.code == 'CANCELED') {
          return;
        }

        try {
          token = await UserApi.instance.loginWithKakaoAccount();
          fetchKaKaoData(token.accessToken);
        } catch (error) {
          return;
        }
      }
    } else {
      try {
        token = await UserApi.instance.loginWithKakaoAccount();
        fetchKaKaoData(token.accessToken);
      } catch (error) {
        return;
      }
    }
  }

  fetchKaKaoData(String token) {
    UserRepository.kakaoSignInApi(token).then(
      (value) {
        if (value != null) {
          setState(() {
            user = value;
          });
          if (user.early == true) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (builder) => const OnBoardingScreen(),
              ),
            );
          }
          if (user.early == false) {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (builder) => const MainScreen(selectedIndex: 0),
              ),
            );
          }
        }
      },
    ).catchError((error) {});
  }

  googleLogin() async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    UserRepository.googleSignInApi(googleSignInAuthentication.accessToken).then(
      (value) {
        if (value != null) {
          setState(() {
            user = value;
          });
          if (user.early == true) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (builder) => const OnBoardingScreen(),
              ),
            );
          }
          if (user.early == false) {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (builder) => const MainScreen(selectedIndex: 0),
              ),
            );
          }
        }
      },
    );
  }
}
