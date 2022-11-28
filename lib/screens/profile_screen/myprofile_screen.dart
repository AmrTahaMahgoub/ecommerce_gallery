import 'dart:ui';

import 'package:ecommerce_gallery/resourses/app_colors.dart';
import 'package:ecommerce_gallery/resourses/app_images.dart';
import 'package:ecommerce_gallery/screens/profile_screen/widgets/custom_profile_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            // fit: StackFit.expand,
            children: [
              Container(
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30).r,
                  ),
                ),
              ),

              // SizedBox(height: 500,),

              Positioned(
                top: 65.r,
                left: 190.r,
                child: CircleAvatar(
                  backgroundColor: ColorManager.YELLOW_COLOR,
                  radius: 40.r,
                  child: Image.asset(AppImagesManager.userImage),
                ),
              ),
            ],
          ),
          // SizedBox(height: 100,),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 70, 20, 50).r,
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  CustomProfileInfo(
                    icondata: Icons.wallet,
                    title: 'wallet',
                  ), CustomProfileInfo(
                    icondata: Icons.navigation,
                    title: 'address',
                  ),
                  CustomProfileInfo(
                    icondata: Icons.favorite,
                    title: 'favorite',
                  ),CustomProfileInfo(
                    icondata: Icons.share,
                    title: 'share code',
                  ),SizedBox(height: 40.h,),
                  CustomProfileInfo(
                    icondata: Icons.album_outlined,
                    title: 'about mono',
                  ),CustomProfileInfo(
                    icondata: Icons.contact_mail,
                    title: 'contact us',
                  ),CustomProfileInfo(
                    icondata: Icons.settings,
                    title: 'setting',
                  ),CustomProfileInfo(
                    icondata: Icons.logout,
                    title: 'sign out',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
