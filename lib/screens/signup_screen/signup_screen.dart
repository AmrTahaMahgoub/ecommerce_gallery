import 'dart:developer';

import 'package:ecommerce_gallery/bloc/LoginBloc/login_bloc_bloc.dart';
import 'package:ecommerce_gallery/bloc/signupbloc/sign_up_bloc.dart';
import 'package:ecommerce_gallery/repository/auth/signup/signup_repo.dart';

import 'package:ecommerce_gallery/screens/loginscreen/login_screen.dart';
import 'package:ecommerce_gallery/screens/navigation_button_screen/navigation_screen.dart';
import 'package:ecommerce_gallery/utlis/cash_helper.dart';
import 'package:ecommerce_gallery/utlis/routes.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:ecommerce_gallery/general_widgets/custom_elevation_button.dart';
import 'package:ecommerce_gallery/general_widgets/custom_text_button.dart';
import 'package:ecommerce_gallery/general_widgets/custom_text_feild.dart';
import 'package:ecommerce_gallery/resourses/app_colors.dart';
import 'package:ecommerce_gallery/resourses/app_images.dart';
import 'package:ecommerce_gallery/resourses/app_string.dart';
import 'package:ecommerce_gallery/resourses/app_style.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityidController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10).r,
                child: Image.asset(AppImagesManager.signUpimage)),
            Container(
              padding: const EdgeInsets.all(10).r,
              child: CustomTextFeild(
                  controller: nameController,
                  label: AppStringManager.userName,
                  validation: (value) {
                    if (value!.isEmpty || value == null) {
                      return AppStringManager.feildRequired;
                    } else {
                      return null;
                    }
                  }),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0).r,
              child: CustomTextFeild(
                  controller: emailController,
                  label: AppStringManager.email,
                  validation: (value) {
                    if (value!.isEmpty || value == null) {
                      return AppStringManager.feildRequired;
                    } else {
                      return null;
                    }
                  }),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0).r,
              child: CustomTextFeild(
                  controller: passwordController,
                  label: AppStringManager.password,
                  validation: (value) {
                    if (value!.isEmpty || value == null) {
                      return AppStringManager.feildRequired;
                    } else {
                      return null;
                    }
                  }),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0).r,
              child: CustomTextFeild(
                  controller: cityidController,
                  label: AppStringManager.cityId,
                  validation: (value) {
                    if (value!.isEmpty || value == null) {
                      return AppStringManager.feildRequired;
                    } else {
                      return null;
                    }
                  }),
            ),
            Container(
                height: 70.h,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0).r,
                child: BlocConsumer<SignUpBloc, SignUpState>(
                  listener: (context, state) async {
                    if (state is SignUpLoading) {
                      print('loading...');
                    } else if (state is SignUpSuccess) {
                      var saveSignUptoken = await CacheHelper.saveData(
                          'signuptoken', "${state.tokenInfo.data?.token}");
                      log('get signup token :${saveSignUptoken}');
                      var getSignUoToken = CacheHelper.getData('signuptoken');
                      if (getSignUoToken != null) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => NavigationScreen())));
                      }
                    }
                  },
                  builder: (context, state) {
                    return CustomElevationButton(
                        text: AppStringManager.signUp,
                        backgroundColor: ColorManager.PRIMARY_COLOR,
                        foregrounColor: ColorManager.SECONDRY_COLOR,
                        onpressed: () {
                          if (_formKey.currentState!.validate()) {
                            BlocProvider.of<SignUpBloc>(context).add(
                                SignUpSuccessEvent(
                                    nameController.text,
                                    emailController.text,
                                    passwordController.text,
                                    cityidController.text));
                            
                          }
                        },
                        textStyle: AppTextStyleManager.bold15);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
