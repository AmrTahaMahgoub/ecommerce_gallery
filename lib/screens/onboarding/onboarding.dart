import 'dart:async';

import 'package:ecommerce_gallery/resourses/app_colors.dart';
import 'package:ecommerce_gallery/resourses/app_images.dart';
import 'package:ecommerce_gallery/resourses/app_string.dart';
import 'package:ecommerce_gallery/resourses/app_style.dart';
import 'package:ecommerce_gallery/screens/signup_screen/signup_screen.dart';
import 'package:ecommerce_gallery/utlis/routes.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Onboarding extends StatefulWidget {
//   const Onboarding({super.key});

//   @override
//   State<Onboarding> createState() => _OnboardingState();
// }

// class _OnboardingState extends State<Onboarding> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utlis/cash_helper.dart';

import '../loginscreen/login_screen.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  var token = CacheHelper.getData('logintoken');


  int pageIndex = 0;
  final pageController = PageController(initialPage: 0);
  @override
 void initState() {
   
    super.initState();
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                // Using Flexible to overcome the screen overflow problem
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      // set page index to current index of page
                      pageIndex = index;
                    });
                  },
                  children: [
                    // Here I'm calling my image with text method for rendering
      
                    _centerImageWithText(
                        image: AppImagesManager.onboardingOne, text: AppStringManager.onboardingText1),
                    _centerImageWithText(
                        image: AppImagesManager.onboardingTwo, text: AppStringManager.onboardingText2),
                    _centerImageWithText(
                        image: AppImagesManager.onboardingThree, text: AppStringManager.onboardingText3),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0).w,
      
                      // Here I'm calling my dot indicator method for redering dot
                      // Also I wrote a ternary condition for changing dots color and its size
                      child: _indicatorDotsWidget(
                          color: pageIndex == i ? ColorManager.PRIMARY_COLOR : ColorManager.WHITE_COLOR,
                          width: pageIndex == i ? 24 : 10),
                    ),
                ],
              ),
      
              //This is our get started button
      
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15).r,
                child: SizedBox(
                  height: 48.h,
                  width: 250.w,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: ColorManager.WHITE_COLOR,
                      elevation: 2,
                      backgroundColor: ColorManager.PRIMARY_COLOR,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10).r,
                      ),
                    ),
                    child: Text(
                      AppStringManager.getStarted,
                      style: AppTextStyleManager.bold14,
                    ),
                    onPressed: () => {
                     
                          Navigator.pushNamedAndRemoveUntil(
                              context, Log_In, (route) => false),
                        
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _centerImageWithText({required String text, required String image}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        Container(
          width: MediaQuery.of(context).size.width / 1.3,
          padding: EdgeInsets.only(top: 10).r,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyleManager.bold14,
          ),
        ),
      ],
    );
  }

  // Method for dots

  Container _indicatorDotsWidget(
      {required Color color, required double width}) {
    return Container(
      height: 8,
      width: width,
      decoration: new BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
