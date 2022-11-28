import 'package:ecommerce_gallery/resourses/app_colors.dart';
import 'package:ecommerce_gallery/resourses/app_style.dart';
import 'package:ecommerce_gallery/screens/general_widgets/custom_listviewbuilserimageandprice.dart';
import 'package:ecommerce_gallery/screens/general_widgets/custom_rowdesignerdatawithbookbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../general_widgets/custom_search_textformfeild.dart';

class MyRequestedScreen extends StatefulWidget {
  const MyRequestedScreen({super.key});
  @override
  MyRequestedScreenState createState() => MyRequestedScreenState();
}

class MyRequestedScreenState extends State<MyRequestedScreen> {
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
          title: CustomSearchTextFormFeild(),
          centerTitle: true,
          backgroundColor: ColorManager.WHITE_COLOR,
          elevation: 0,
       
          leading: Icon(
            Icons.notifications_active_outlined,
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
                        // SizedBox(height: 10,),
                        Expanded(child: CustomListViewImageDataAndPrice()),
                        Expanded(
                          child: CustomRowDesignerUserDatawithBookButton(
                            buttonLabel: 'On Hold',
                            inkewellColor: ColorManager.primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),

                  // second tab bar viiew widget
                  Container(
                    color: ColorManager.grey,
                    child: Column(
                      children: [
                        Expanded(child: CustomListViewImageDataAndPrice()),
                        Expanded(
                            child: CustomRowDesignerUserDatawithBookButton(
                          buttonLabel: 'Opening',
                          inkewellColor: ColorManager.primaryColor,
                        ))
                      ],
                    ),
                  ),
                  Container(
                    color: ColorManager.grey,
                    child: Column(
                      children: [
                        Expanded(child: CustomListViewImageDataAndPrice()),
                        Expanded(
                            child: CustomRowDesignerUserDatawithBookButton(
                          buttonLabel: 'finished',
                          inkewellColor: ColorManager.error,
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
