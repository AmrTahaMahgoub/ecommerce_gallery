import 'package:ecommerce_gallery/resourses/app_colors.dart';
import 'package:ecommerce_gallery/resourses/app_style.dart';
import 'package:ecommerce_gallery/screens/general_widgets/custom_listviewbuilserimageandprice.dart';
import 'package:ecommerce_gallery/screens/general_widgets/custom_rowdesignerdatawithbookbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../general_widgets/custom_elevated_blue_button.dart';
import '../general_widgets/custom_listviewwithimagepricebookbutoon.dart';
import '../general_widgets/custom_search_textformfeild.dart';

class MyServisesScreen extends StatefulWidget {
  const MyServisesScreen({super.key});
  @override
  MyServisesScreenState createState() => MyServisesScreenState();
}

class MyServisesScreenState extends State<MyServisesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.message_outlined,
              color: ColorManager.LIGHT_PRIMARY,
            ),
          ],
          title: Text(
            'My Services',
            style: AppTextStyleManager.SearchStyle,
          ),
          centerTitle: true,
          backgroundColor: ColorManager.WHITE_COLOR,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back,
            color: ColorManager.LIGHT_PRIMARY,
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: ColorManager.grey,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text('waiting', style: AppTextStyleManager.tabbarstyle),
                    ),
                    Tab(
                      child: Text('working', style: AppTextStyleManager.tabbarstyle),
                    ),
                    Tab(
                      child: Text('finished', style: AppTextStyleManager.tabbarstyle),
                    ),
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    color: ColorManager.grey,
                    child: Column(
                      children: [
                        Expanded(
                            child: CustomListviewwithImagePriceAndBookButton())
                      ],
                    ),
                  ),

                  // second tab bar viiew widget
                  Container(
                    color: ColorManager.grey,
                    child: Column(
                      children: [
                        Expanded(
                            child: CustomListviewwithImagePriceAndBookButton())
                      ],
                    ),
                  ),
                  Container(
                    color: ColorManager.grey,
                    child: Column(
                      children: [
                        Expanded(
                            child: CustomListviewwithImagePriceAndBookButton())
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25).r,
              child: SizedBox(
                width: double.infinity,
                child: CustomElevatedBlueButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
