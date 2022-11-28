import 'package:ecommerce_gallery/resourses/app_colors.dart';
import 'package:ecommerce_gallery/resourses/app_images.dart';
import 'package:ecommerce_gallery/resourses/app_style.dart';
import 'package:ecommerce_gallery/screens/general_widgets/custom_listviewbuilserimageandprice.dart';
import 'package:ecommerce_gallery/screens/general_widgets/custom_search_textformfeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../general_widgets/custom_listviewwithimagepricebookbutoon.dart';
import '../general_widgets/custom_rowdesignerdatawithbookbutton.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(alignment: Alignment.center,
              child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 20).r,
              child: CustomSearchTextFormFeild(),
            )),
            Container(
              color: ColorManager.grey1,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15).r,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('CATEGORIES'),
                        Text('SEE ALL'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        padding: EdgeInsets.all(10),
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                              padding: EdgeInsets.all(2),
                              height: 20,
                              width: 40,
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('data'),
                                  Text('world'),
                                ],
                              ),
                            )),
                  )
                ],
              ),
            ),
            Container(
              color: ColorManager.grey1,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15).r,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Offers & packages'),
                        Text('see all'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: CustomListViewImageDataAndPrice(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('inerior design')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomRowDesignerUserDatawithBookButton(buttonLabel: 'book',inkewellColor: ColorManager.blue),
                  )
                ],
              ),
            ),
            Container(
              color: ColorManager.grey1,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15).r,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Different Services '),
                        Text('see all'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: CustomListviewwithImagePriceAndBookButton(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





