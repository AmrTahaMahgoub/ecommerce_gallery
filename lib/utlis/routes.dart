import 'package:ecommerce_gallery/bloc/signupbloc/sign_up_bloc.dart';
import 'package:ecommerce_gallery/repository/auth/login/login_repo.dart';
import 'package:ecommerce_gallery/repository/auth/signup/signup_repo.dart';

import 'package:ecommerce_gallery/screens/loginscreen/login_screen.dart';
import 'package:ecommerce_gallery/screens/navigation_button_screen/navigation_screen.dart';
import 'package:ecommerce_gallery/screens/onboarding/onboarding.dart';
import 'package:ecommerce_gallery/screens/signup_screen/signup_screen.dart';
import 'package:ecommerce_gallery/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/LoginBloc/login_bloc_bloc.dart';

const SPLASH = "/";
const ONBORADING = "/onbording";
const Log_In = "/login";
const sign_up = "/signup";
const homePageScreen = "/homepageScreen";
const navigationSceen = '/navigationScreen';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(builder: (_) => const Splash());
      case ONBORADING:
        return MaterialPageRoute(builder: (_) => Onboarding());
      case Log_In:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case sign_up:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case navigationSceen:
        return MaterialPageRoute(builder: (_) => NavigationScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("no screens for that root"),
            ),
          );
        });
    }
  }
}
