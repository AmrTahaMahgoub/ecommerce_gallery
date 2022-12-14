import 'package:ecommerce_gallery/resourses/app_images.dart';
import 'package:flutter/material.dart';

class CustomRowDesignerUserDatawithBookButton extends StatelessWidget {
  CustomRowDesignerUserDatawithBookButton({required this.buttonLabel,required this.inkewellColor});
  String buttonLabel;
  Color? inkewellColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(child: Image.asset(AppImagesManager.userImage)),
        Text('designer / ibrahem'),
        Spacer(),
        InkWell(
          onTap: () {},
          child: Container(
            width: 70.0,
            height: 30.0,
            decoration: BoxDecoration(
              color: inkewellColor,
              //border: new Border.all( width: 2.0),
              borderRadius: new BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                buttonLabel,
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
