import 'package:flutter/material.dart';

import '../utils/media_query.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final Color? buttonBackGroundColor;
  final Color? buttonColor;
  const CustomIconButton(
      {super.key,
      required this.iconData,
      required this.onTap,
      this.buttonBackGroundColor,
      this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        //splashColor: Colors.red,
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: CircleAvatar(
          radius: GetScreenSize.getScreenWidth(context) * 0.06,
          backgroundColor: buttonBackGroundColor,
          child: Icon(
            iconData,
            color: buttonColor,
            size: GetScreenSize.getScreenWidth(context) * 0.08,
          ),
        ),
      ),
    );
  }
}
