import 'package:flutter/material.dart';
import 'package:to_do_list/views/home_page/home_page_widgets/date_time_text.dart';

class CenterTextArae extends StatelessWidget {
  const CenterTextArae({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Morning",
          style: TextStyle(
            fontSize: width * 0.2,
            color: Colors.blue.shade400,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomDetailTextWidget(
              subText: "Dec, 12 2023",
              topText: "Today's Moring ",
            ),
            CustomDetailTextWidget(
              subText: "75% Done",
              topText: "Competed",
            )
          ],
        )
      ],
    );
  }
}
