import 'package:flutter/material.dart';

class CustomElevatedBlueButton extends StatelessWidget {
  const CustomElevatedBlueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0))),
        ),
        onPressed: () {},
        child: Text('add service'));
  }
}