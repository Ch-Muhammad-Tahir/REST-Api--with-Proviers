import 'package:flutter/material.dart';
import 'package:to_do_list/utils/media_query.dart';

class CustomDetailTextWidget extends StatelessWidget {
  final String topText;
  final String subText;
  const CustomDetailTextWidget(
      {super.key, required this.topText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          style: TextStyle(
              color: Colors.white,
              fontSize: GetScreenSize.getScreenWidth(context) * 0.05),
        ),
        Text(
          subText,
          style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: GetScreenSize.getScreenWidth(context) * 0.04),
        ),
      ],
    );
  }
}
