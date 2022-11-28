import 'package:ecommerce_gallery/bloc/LoginBloc/login_bloc_bloc.dart';
import 'package:ecommerce_gallery/bloc/signupbloc/sign_up_bloc.dart';
import 'package:ecommerce_gallery/repository/auth/login/login_repo.dart';
import 'package:ecommerce_gallery/repository/auth/signup/signup_repo.dart';
import 'package:ecommerce_gallery/utlis/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utlis/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, mediaQuery) {
        return MultiBlocProvider(providers: [
              BlocProvider<LoginBlocBloc>(
      create: (BuildContext context) => LoginBlocBloc(LoginRepository()),
    ),
    BlocProvider<SignUpBloc>(
      create: (BuildContext context) => SignUpBloc(SignUpRepository()),
    ),
        ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
             onGenerateRoute: AppRouter.generateRoute,
          ),
        );
      },
    );
  }
}
