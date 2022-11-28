
import 'package:ecommerce_gallery/resourses/app_images.dart';
import 'package:flutter/material.dart';

class CustomListviewwithImagePriceAndBookButton extends StatelessWidget {
  const CustomListviewwithImagePriceAndBookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(2),
              height: 70,
              width: double.infinity,
              // color: Colors.red,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImagesManager.cameraImage),
                  Column(
                    children: [
                      Text('Design of a childrens'),
                      Text('room for two children'),
                      Text('interior design'),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('256 EG'),
                      Text('STARS '),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 70.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            //border: new Border.all( width: 2.0),
                            borderRadius:
                                new BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
  }
}