import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../common/base/bouncing.dart';
import '../../model/farmus_user.dart';
import '../../repository/login_repository.dart';
import '../on_boarding/on_boarding_screen.dart';

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
  final List<String> _pageContents = ['Page 1', 'Page 2', 'Page 3', 'Page 4'];

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
              if (index == 0) {
              } else if (index == 1) {
              } else if (index == 2) {
              } else if (index == 3) {
              } else {
                return Container();
              }
              return null;
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

  kakaoLogin() async {
    print("카카오 로그인 버튼 클릭");
    print(await KakaoSdk.origin);

    bool isInstalled = await isKakaoTalkInstalled();
    OAuthToken? token;

    if (isInstalled) {
      try {
        token = await UserApi.instance.loginWithKakaoTalk();
        print('카카오톡으로 로그인 성공1');
        fetchKaKaoData(token.accessToken);
      } catch (error) {
        print('카카오톡으로 로그인 실패1 $error');

        if (error is PlatformException && error.code == 'CANCELED') {
          return;
        }

        try {
          token = await UserApi.instance.loginWithKakaoAccount();
          print('카카오계정으로 로그인 성공2');
          fetchKaKaoData(token.accessToken);
        } catch (error) {
          print('카카오계정으로 로그인 실패2 $error');
        }
      }
    } else {
      try {
        token = await UserApi.instance.loginWithKakaoAccount();
        print('카카오계정으로 로그인 성공3');
        print(token.accessToken);
        fetchKaKaoData(token.accessToken);
      } catch (error) {
        print('카카오계정으로 로그인 실패3 $error');
      }
    }
  }

  fetchKaKaoData(String token) {
    SignInRepository.kakaoSignInApi(token).then(
      (value) {
        if (value != null) {
          setState(() {
            user = value;
          });
          print(user.early);
          if (user.early == true) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => const OnBoardingScreen()));
          }
        } else {
          print('User data is null');
        }
      },
    ).catchError((error) {
      print('Error fetching Kakao data: $error');
    });
  }

  googleLogin() async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    SignInRepository.googleSignInApi(googleSignInAuthentication.accessToken)
        .then(
      (value) {
        if (value != null) {
          setState(() {
            user = value;
          });
          if (user.early == true) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => const OnBoardingScreen()));
          }
        } else {
          print('User data is null');
        }
      },
    );
  }
}
